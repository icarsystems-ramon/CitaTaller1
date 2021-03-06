$PBExportHeader$w_show_solicitudes.srw
forward
global type w_show_solicitudes from window
end type
type dw_detail from datawindow within w_show_solicitudes
end type
type cb_exit from commandbutton within w_show_solicitudes
end type
type dw_solicitudes from datawindow within w_show_solicitudes
end type
type r_title from rectangle within w_show_solicitudes
end type
type st_title from statictext within w_show_solicitudes
end type
end forward

global type w_show_solicitudes from window
integer width = 3406
integer height = 2332
windowtype windowtype = response!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_detail dw_detail
cb_exit cb_exit
dw_solicitudes dw_solicitudes
r_title r_title
st_title st_title
end type
global w_show_solicitudes w_show_solicitudes

type variables
n_cst_solicitudcitatallerweb inv_solicitud


Constant uint  WM_SYSCOMMAND = 274

Constant uint MF_BYCOMMAND = 0
Constant uint  SC_SIZE		= 61440
Constant uint  SC_MOVE		= 61456
Constant uint  SC_MOVE2		= 61458
Constant uint  SC_MINIMIZE		= 61472
Constant uint  SC_MAXIMIZE		= 61488
Constant uint  SC_NEXTWINDOW	= 61504
Constant uint  SC_PREVWINDOW	= 61520
Constant uint  SC_CLOSE		= 61536
Constant uint  SC_VSCROLL	 = 61552
Constant uint  SC_HSCROLL	 = 61568
Constant uint  SC_MOUSEMENU    = 61584


end variables

forward prototypes
public subroutine of_showdetail (long al_row)
public subroutine of_choosed (long al_row)
public subroutine of_onmessage ()
end prototypes

public subroutine of_showdetail (long al_row);String ls_SolicitudID
Long ll_row
Long ll_count
String ls_jobstxt
String ls_horastxt
String ls_id
String ls_descripcion
String ls_dmsjobid

Date ld_ant
Date ld_fecha
Long ll_hora
Long ll_minuto
Long ll_find

Boolean lb_change

datastore lds_solicitudjob
datastore lds_solicitudhora
datastore lds_dmsjob

lds_solicitudjob = inv_solicitud.ids_solicitudjob
lds_solicitudhora = inv_solicitud.ids_solicitudhora
lds_dmsjob = inv_solicitud.ids_dmsjob


ls_SolicitudID = dw_solicitudes.getItemString (al_row,'id')
inv_solicitud.of_retrieve_detail (ls_SolicitudID)

if dw_detail.RowCount() > 0 then
else
	dw_detail.InsertRow(0)
end if

dw_detail.SetItem (1,'vehiculocortesia',dw_solicitudes.GetItemString (al_row,'vehiculocortesia'))

for ll_row = 1 to lds_solicitudjob.rowcount()
	ls_dmsjobid = trim(lds_solicitudjob.GetItemString (ll_row,'dmsjobid'))
	ll_find = lds_dmsjob.find ("id='" + ls_dmsjobid + "'",1,lds_dmsjob.rowcount())
	if ll_find > 0 then
		ls_jobstxt += lds_dmsjob.GetItemString (ll_find,'descripcion') + '~r~n'
	else
		ls_jobstxt += lds_solicitudjob.GetItemString (ll_row,'dmsjobid') + '~r~n'
	end if
next

ls_descripcion = dw_solicitudes.GetItemString (al_row,'descripcion')
if ls_descripcion > '' then ls_jobstxt += ls_descripcion + '~r~n'

for ll_row = 1 to lds_solicitudhora.rowcount()	
	ld_fecha  = Date(lds_solicitudhora.GetItemDateTime (ll_row,'fecha'))
	ll_hora   = lds_solicitudhora.GetItemNumber (ll_row,'hora') 
	ll_minuto = lds_solicitudhora.GetItemNumber (ll_row,'minuto') 
	if ld_fecha = ld_ant then
		lb_change = false
	else
		lb_change = true
		ld_ant = ld_fecha
	end if
	if lb_change then
		if ls_horastxt > '' then ls_horastxt +=  '~r~n'
		ls_horastxt += String (ld_fecha,'dd/mm') + '   '
	end if
	ls_horastxt += string (ll_hora) + ':' + string(ll_minuto,'00') + ' '
	//ls_horastxt += lds_solicitudhora.GetItemString (ll_row,'dmsjobid') + '~r~n'
next



dw_detail.SetItem (1,'jobs',ls_jobstxt)
dw_detail.SetItem (1,'horario',ls_horastxt)

return

end subroutine

public subroutine of_choosed (long al_row);MessageBox ('Solicitudes Web', '¿Desea crear nueva cita en ICarDMS?',Question!, YesNo!)

return

end subroutine

public subroutine of_onmessage ();Long   ll_row
String ls_SolicitudID
Long   ll_find
ll_row = dw_solicitudes.GetRow()
SetRedraw (false)
ls_SolicitudID = dw_solicitudes.getItemString (ll_row,'id')
inv_solicitud.of_retrieve_solicitudes()
ll_find = dw_solicitudes.Find ('id="' + ls_SolicitudID + '"',1,dw_solicitudes.rowcount())
if ll_find > 0 then dw_solicitudes.ScrollToRow (ll_find)
SetRedraw (true)
return


end subroutine

on w_show_solicitudes.create
this.dw_detail=create dw_detail
this.cb_exit=create cb_exit
this.dw_solicitudes=create dw_solicitudes
this.r_title=create r_title
this.st_title=create st_title
this.Control[]={this.dw_detail,&
this.cb_exit,&
this.dw_solicitudes,&
this.r_title,&
this.st_title}
end on

on w_show_solicitudes.destroy
destroy(this.dw_detail)
destroy(this.cb_exit)
destroy(this.dw_solicitudes)
destroy(this.r_title)
destroy(this.st_title)
end on

event open;r_title.LineColor  =  rgb(88,88,88)
r_title.FillColor  =  rgb(88,88,88)
st_title.BackColor =  rgb(88,88,88)

inv_solicitud = Message.PowerObjectParm

dw_solicitudes.Modify("DataWindow.Color=" + String(rgb(255, 251, 240) ))  //15793151") //Color Cream
dw_solicitudes.Modify('DataWindow.Detail.Color="' + "536870912~tif (getrow() = currentrow(),rgb(227,233,243) , rgb(255, 251, 240))" + '"' )

dw_detail.Modify("DataWindow.Color=" + String(rgb(255, 251, 240) )) 

	
inv_solicitud.ids_solicitudes.ShareData (dw_solicitudes)
end event

event mousedown;Send( Handle( this ),WM_SYSCOMMAND,SC_MOVE2, 0 )
end event

type dw_detail from datawindow within w_show_solicitudes
integer x = 18
integer y = 1352
integer width = 3342
integer height = 756
integer taborder = 20
string title = "none"
string dataobject = "dw_solictud_detail"
boolean border = false
boolean livescroll = true
end type

type cb_exit from commandbutton within w_show_solicitudes
integer x = 2848
integer y = 2148
integer width = 521
integer height = 120
integer taborder = 20
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Cancelar"
boolean cancel = true
end type

event clicked;inv_solicitud.of_windows_visible (false)

//close (parent)
end event

type dw_solicitudes from datawindow within w_show_solicitudes
integer x = 18
integer y = 144
integer width = 3342
integer height = 1168
integer taborder = 10
string title = "none"
string dataobject = "dw_solictud_list"
boolean vscrollbar = true
boolean border = false
boolean livescroll = true
end type

event rowfocuschanged;If currentrow > 0 then 
	this.SetRow (currentrow)
	//SolicitudID = this.getItemString (currentRow,'id')
	parent.of_showdetail (currentrow)
	SetRedraw(true)
end if


end event

event doubleclicked;if row > 0 then
	SetRow(row)
	parent.of_choosed (row)
end if

end event

type r_title from rectangle within w_show_solicitudes
long linecolor = 8421504
integer linethickness = 4
long fillcolor = 8421504
integer y = 4
integer width = 3525
integer height = 124
end type

type st_title from statictext within w_show_solicitudes
event lbuttondown pbm_lbuttondown
event lbuttonup pbm_lbuttonup
integer x = 23
integer y = 28
integer width = 3301
integer height = 88
boolean bringtotop = true
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16777215
long backcolor = 8421504
string text = "Solicitudes web cita taller"
boolean focusrectangle = false
end type

event lbuttondown;Parent.Event mousedown (flags,xpos,ypos)

end event

event lbuttonup;this.SetRedraw(true)

end event

