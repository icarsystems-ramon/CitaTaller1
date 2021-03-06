$PBExportHeader$n_cst_solicitudcitatallerweb.sru
forward
global type n_cst_solicitudcitatallerweb from nonvisualobject
end type
end forward

global type n_cst_solicitudcitatallerweb from nonvisualobject
end type
global n_cst_solicitudcitatallerweb n_cst_solicitudcitatallerweb

type variables
datastore ids_solicitudes
//datastore ids_solicitud
datastore ids_solicitudjob
datastore ids_solicitudhora
datastore ids_dmsjob

Boolean ib_init
Boolean ib_window
String is_dmstallerid


Inet inv_inet
n_cst_internetresult inv_result
w_show_solicitudes	iw_window

end variables

forward prototypes
public subroutine of_init ()
public subroutine of_retrieve_solicitudes ()
public subroutine of_retrieve_detail (string as_id)
public subroutine of_retrieve_dms ()
public subroutine of_windows_visible (boolean ab_value)
public subroutine of_onmessage ()
end prototypes

public subroutine of_init ();if ib_init then return
ib_init = true

ids_solicitudes = create datastore
//ids_solicitud   = create datastore
ids_solicitudjob = create datastore
ids_solicitudhora = create datastore
ids_dmsjob = create datastore

ids_solicitudes.DataObject = 'dw_xml_solicitudes'
ids_solicitudjob.DataObject = 'dw_xml_solicitudjob'
ids_solicitudhora.DataObject = 'dw_xml_solicitudhora'
ids_dmsjob.DataObject = 'dw_xml_dmsjob'

inv_inet = create inet
inv_result = create n_cst_internetresult

end subroutine

public subroutine of_retrieve_solicitudes ();Integer li_rc
String ls_url
String ls_response




SetPointer (hourglass!)

of_retrieve_dms()

ls_url = "http://citatallerapi.azurewebsites.net/api/solicitudes?format=xml&excludeDetail=true&dmsTallerId=" + is_dmstallerid

inv_inet.GetURL (ls_url, inv_result)
ls_response = inv_result.is_data

ids_solicitudes.Reset()
li_rc = ids_solicitudes.ImportString (XML!, ls_response)



SetPointer (Arrow!)

end subroutine

public subroutine of_retrieve_detail (string as_id);String ls_SolicitudID
String ls_xml
String ls_xmlhora
String ls_xmljob
String ls_url
String ls_response

Long ll_pos1
Long ll_pos2


Long ll_row1
Long ll_row2

Integer li_rc




SetPointer (hourglass!)


ls_url = "http://citatallerapi.azurewebsites.net/api/solicitud/" + as_id + "?format=xml"

inv_inet.GetURL (ls_url, inv_result)
ls_response = inv_result.is_data

ll_pos1 = pos (ls_response,'<solicitudJobs>')
ll_pos2 = pos (ls_response,'</solicitudJobs>')

ls_xmljob = Mid (ls_response,ll_pos1,ll_pos2 - ll_pos1 + 16)


ll_pos1 = pos (ls_response,'<solicitudHoras>')
ll_pos2 = pos (ls_response,'</solicitudHoras>')

ls_xmlhora = Mid (ls_response,ll_pos1,ll_pos2 - ll_pos1 + 17)

ls_xmljob = '<?xml version="1.0" encoding="utf-8"?>' + ls_xmljob
ls_xmlhora = '<?xml version="1.0" encoding="utf-8"?>' + ls_xmlhora

ids_solicitudjob.Reset()
ids_solicitudhora.Reset()

li_rc = ids_solicitudjob.ImportString (xml!,ls_xmljob)
li_rc = ids_solicitudhora.ImportString (xml!,ls_xmlhora)

ll_row1 = ids_solicitudjob.RowCount()
ll_row2 = ids_solicitudhora.RowCount()

SetPointer (Arrow!)
return

end subroutine

public subroutine of_retrieve_dms ();String ls_xml
String ls_xmljob
String ls_url
String ls_response

Long ll_pos1
Long ll_pos2

Long ll_row1
Long ll_row2

Integer li_rc

ls_url = "http://citatallerapi.azurewebsites.net/api/dmsconfig?format=xml"

inv_inet.GetURL (ls_url, inv_result)
ls_response = inv_result.is_data

ll_pos1 = pos (ls_response,'<dmsJobs')
ll_pos1 = pos (ls_response,'<dmsJobs',ll_pos1 + 1)
ll_pos2 = pos (ls_response,'</dmsJobs>',ll_pos1)

ls_xmljob = Mid (ls_response,ll_pos1,ll_pos2 - ll_pos1 + 10)
ls_xmljob = '<?xml version="1.0" encoding="utf-8"?>' + ls_xmljob

ids_dmsjob.Reset()
li_rc = ids_dmsjob.ImportString (xml!,ls_xmljob)
ll_row1 = ids_dmsjob.RowCount()

return




end subroutine

public subroutine of_windows_visible (boolean ab_value);choose case ab_value
	case true
		if ib_window then
			return
		end if
		//OpenWithParm (w_show_solicitudes,inv_solicitud)
		ib_window = true
		OpenWithParm (iw_window,this,'w_show_solicitudes')		
	case false
		if isvalid (iw_window) then
			Close (iw_window)
		end if
		ib_window = false
end choose

end subroutine

public subroutine of_onmessage ();if (ib_window) then
	iw_window.of_onmessage()
end if



end subroutine

on n_cst_solicitudcitatallerweb.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_solicitudcitatallerweb.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

