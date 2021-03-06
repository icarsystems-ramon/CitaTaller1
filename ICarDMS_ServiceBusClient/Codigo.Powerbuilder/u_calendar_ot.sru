$PBExportHeader$u_calendar_ot.sru
forward
global type u_calendar_ot from u_manto_base
end type
type uo_servicebus from uo_solicitudcitatallerweb within u_calendar_ot
end type
type uo_solicitud from u_hoverbutton_solicitud within u_calendar_ot
end type
type uo_fleetbox from u_hoverbutton_toolbar within u_calendar_ot
end type
type dw_datosmail from datawindow within u_calendar_ot
end type
type uo_pacteoffice from u_hoverbutton_toolbar within u_calendar_ot
end type
type dw_s10det from u_dw within u_calendar_ot
end type
type dw_datostiempo from datawindow within u_calendar_ot
end type
type dw_s30det from u_dw within u_calendar_ot
end type
type dw_datossms from datawindow within u_calendar_ot
end type
type dw_datosparada from datawindow within u_calendar_ot
end type
type dw_datoscli from datawindow within u_calendar_ot
end type
type dw_show20 from u_dw within u_calendar_ot
end type
type r_back from rectangle within u_calendar_ot
end type
type dw_show30 from u_dw within u_calendar_ot
end type
type st_fondo from statictext within u_calendar_ot
end type
type dw_show10 from u_dw within u_calendar_ot
end type
type st_tooltip from statictext within u_calendar_ot
end type
type uo_keyreader from u_hoverbutton_toolbar within u_calendar_ot
end type
type uo_other from u_hoverbutton_toolbar within u_calendar_ot
end type
type uo_cargacita from u_hoverbutton_toolbar within u_calendar_ot
end type
type uo_mecanicos from u_hoverbutton_toolbar within u_calendar_ot
end type
type uo_pin from u_hoverbutton_pin within u_calendar_ot
end type
type uo_search from u_hoverbutton_toolbar within u_calendar_ot
end type
type uo_view_backorder from u_hoverbutton_toolbar within u_calendar_ot
end type
type uo_robef from u_hoverbutton_toolbar within u_calendar_ot
end type
type st_title from u_month_head within u_calendar_ot
end type
type uo_nuevo from u_hoverbutton_toolbar within u_calendar_ot
end type
end forward

global type u_calendar_ot from u_manto_base
integer width = 1413
integer height = 3068
boolean ib_draginit = true
event ue_timer ( )
event ue_mousemove pbm_mousemove
event ue_parentnotify ( string as_param )
uo_servicebus uo_servicebus
uo_solicitud uo_solicitud
uo_fleetbox uo_fleetbox
dw_datosmail dw_datosmail
uo_pacteoffice uo_pacteoffice
dw_s10det dw_s10det
dw_datostiempo dw_datostiempo
dw_s30det dw_s30det
dw_datossms dw_datossms
dw_datosparada dw_datosparada
dw_datoscli dw_datoscli
dw_show20 dw_show20
r_back r_back
dw_show30 dw_show30
st_fondo st_fondo
dw_show10 dw_show10
st_tooltip st_tooltip
uo_keyreader uo_keyreader
uo_other uo_other
uo_cargacita uo_cargacita
uo_mecanicos uo_mecanicos
uo_pin uo_pin
uo_search uo_search
uo_view_backorder uo_view_backorder
uo_robef uo_robef
st_title st_title
uo_nuevo uo_nuevo
end type
global u_calendar_ot u_calendar_ot

type prototypes
Function ulong GetWindowRect (ulong hWnd, ref api_rect lpRect) Library "USER32.DLL" alias for "GetWindowRect;Ansi"

end prototypes

type variables
n_cst_multiTallerManager	inv_multiTaller		// FAB - 0002566 - 22/09/2015 
n_cst_ttot_open			inv_ttotOpen			// FAB - 36551114409 - 31/01/2013 
n_cst_manto_calendar  	inv_manager
n_cst_manto_popup			inv_calendar_popup
n_cst_ttkeyreader			inv_keyreader
n_cst_platform				inv_platform
n_cst_pacteoffice			inv_pacteoffice 
n_cst_tmrobef				inv_robef				// LMC - 25821051021 - 12/06/2009

n_cst_fleetbox				inv_fleetbox			// FAB - 0000164 - 04/09/2014 

u_panel_data				iuo_panel
u_panel_plancortesia		iuo_panel_cortesia
window						iw_parent
w_base_tooltip				iw_datoscli

u_dw							idw_show
u_calendar_flow			iuo_flow

n_ds				ids_otstatus
n_ds				ids_ttotcab
n_ds				ids_show10
n_ds				ids_show20
n_ds				ids_show30
n_ds				ids_s30det
n_ds				ids_s10det // FAB - 5/12/2007 20661053029
n_ds				ids_tgmarca
n_ds				ids_tallermarca
n_ds				ids_aux_show10
n_ds				ids_aux_show20
n_ds				ids_aux_show30
n_ds				ids_aux_s30det
n_ds				ids_aux_s10det	// FAB - 5/12/2007 20661053029
n_ds				ids_otlinea
n_ds				ids_otinterven

Integer			ii_dragid
Integer			ii_vista
Integer			ii_ascending
Integer			ii_ToolID
Integer			ii_tooltip
Integer			ii_lasttooltip

Long				il_row_flow
Long           il_lastdescen
Long				il_last_row_mousemove
Long				il_scrollpos
Long				il_scrollpixels
Long				il_antxpos
Long				il_xposclick
Long				il_fontsize = 8
Long				il_last_row_tooltip
Long				il_last_row_tooltip_text
Long				il_minimumwidth = 1000
Long				il_flow_last_cliente
Long				il_flow_last_numinterno
//Long				il_prev_numinterno
Long				il_vscrollposition
Long				il_last_xpos
Long				il_last_ypos

String			is_font = 'Tahoma'
String			is_enter_dragicon
String			is_tooltip_PiezasNoServidas
String			is_keyreader_tagmarcaaso
String			is_nombrepanel
String			is_groupbyvalue
String			is_orderbyvalue
String			is_key
String			is_opcion[]
String			is_opckey[]
String			is_tipopanel
String 			is_filter_ot
String			is_filter_presupuesto
String 			is_lastsorted
String			is_otrasmarcas
String			is_convehcortesia
String			is_columnsplitting
String			is_columntooltip
String			is_currentcolumn
String			is_listacolumn10[]
String			is_listacolumn20[]
String			is_listacolumn30[]
String			is_listacolumn3d[]
String			is_listacolumn1d[]	// FAB - 5/12/2007 20661053029
String			is_lasttooltip
String			is_estado_det[]
String			is_tooltip_det[]

Dec{2}  			ir_lastwidth

Boolean			ib_pinned
Boolean			ib_flowactive
Boolean			ib_retrieving
Boolean			ib_filtrar = false
Boolean			ib_keyreader_activo
Boolean			ib_haygroupby
Boolean			ib_initialized
Boolean			ib_splitting
Boolean			ib_columnasiguiente
Boolean			ib_forcegroupby
Boolean			ib_viewtooltip
Boolean			ib_ignoremousemove
Boolean			ib_ignoreresize
Boolean			ib_nost_tooltip
Boolean			ib_firsttimes30det
Boolean			ib_firsttimes10det	// FAB - 5/12/2007 20661053029
Boolean			ib_calendar_cita
Boolean			ib_dwdatosclivisible
Boolean			ib_marcofoco
Boolean			ib_cargacita_init
Boolean			ib_nuevo_init
Boolean			ib_backorder_init
Boolean			ib_mecanicos_init
Boolean			ib_pacteoffice_init
Boolean			ib_robef_init
Boolean			ib_canretrieve
BOOLEAN			ib_fromHierarchicalPanel		// Ref.: 38411357550 - jdm - 05/11/2012
Boolean			ib_check_multitaller				// FAB - 0002566 - 22/09/2015 

Constant String is_tarea_icono   = '..\recursos\ico\drag_tgagendatarea.ico' 
Constant String is_ttotcab_icono = '..\recursos\ico\drag_ttotcab.ico'
Constant String is_nodrop_icono  = '..\recursos\ico\nodrop.ico'

Constant Integer OT_SOURCE = 0		// IPS: 16.05.2006 - 13911608044 - Parada Intervencion

// =====
// Ref.: 18741556467 - jdm - 22/05/2007
Protected:
	n_cst_plancortesia_popup			inv_plancortesia_popup
	n_ds	ids_ttcortesiaasignacion
	n_ds	ids_tgveh
	
	Long	il_popup_row	

// =====

end variables

forward prototypes
public subroutine of_resize ()
public subroutine of_rowfocuschanged (long al_row)
public subroutine of_losefocus ()
public subroutine of_scrolltotarea (long al_tarea)
public subroutine of_search ()
public subroutine of_window_vista ()
public subroutine of_dragcero ()
public subroutine of_changevista ()
public subroutine of_init ()
public subroutine of_filter ()
public subroutine of_retrieve ()
public subroutine of_edit (long al_row)
public subroutine of_show_dragtarget (datawindow adw_target, boolean ab_switch)
public subroutine of_show_dragsource (datawindow adw_source, long al_row, boolean ab_switch)
public subroutine of_flashrow (datawindow adw_flash, long al_row)
public subroutine of_change_emp ()
public subroutine of_cargacita ()
public subroutine of_refresh_cita (long al_tarea)
public subroutine of_edit_status (long al_row)
public subroutine of_set_avisotooltip (long al_row)
public subroutine of_reselectrow (ref u_dw adw_target, long al_row)
public subroutine of_filtrar_recepcionista (boolean ab_filtrar, string as_recepcionista)
public subroutine of_filter_recepcionista ()
public function integer of_open_keyrnotratados ()
public subroutine of_set_keyreader ()
public subroutine of_adjust_width ()
public subroutine of_new_keyreader (string as_chasis)
public subroutine of_set_tooltip ()
public subroutine of_set_orderby (string as_orderby)
public subroutine of_retrieve_tallermarca ()
public function integer of_reselect (ref n_ds ads_target, long al_numinterno)
public subroutine of_destroy ()
public subroutine of_set_groupby (string as_groupby, long al_row)
public subroutine of_set_groupby (string as_groupby)
public function integer of_scrolltoot (long al_numinterno)
public function integer of_scrolltopresup (long al_numinterno)
public subroutine of_splitting (ref u_dw adw_source, string as_column, long al_xpos)
public subroutine of_get_columnlist ()
public subroutine of_initsize ()
public subroutine of_mousemove (ref u_dw adw_source, integer xpos, integer ypos, long row)
public subroutine of_hide_dwdatoscli ()
public subroutine of_dragdrop ()
public subroutine of_refresh_cita (long al_tarea, long al_numinterno)
public subroutine of_repartirancho (u_dw adw_source)
public subroutine of_resizecolumns (u_dw adw_source, long al_widthrazonx)
public function long of_calcular_width (u_dw adw_source)
public subroutine of_repartirancho ()
public subroutine of_set_orderby (string as_orderby, boolean ab_resort)
public function integer of_scrolltocita (long al_numinterno)
public subroutine of_set_detailcolor ()
public function integer of_new ()
public subroutine of_view_backorder ()
public subroutine of_init_hoverbutton (ref u_hoverbutton auo_source, string as_picture, string as_hoverpicture, string as_tooltip)
public subroutine of_create_aux (ref n_ds ads_new, string as_dataobject)
public subroutine of_show_backorder (long al_row)
public function long of_calc_tooltipposition (ref u_dw adw_source, long al_row)
public function integer of_open_mecanicos ()
public subroutine of_lbuttonup ()
protected function integer of_hide_popup ()
protected function integer of_prepare_popup (long al_row)
public subroutine of_init_marco (datawindow adw_source, long al_row)
public subroutine of_getrow (boolean ab_switch)
public subroutine of_show_marco (datawindow adw_source, long al_row, boolean ab_switch)
public subroutine of_show_marco_off ()
public subroutine of_show_marco_on ()
public subroutine of_show_cortesia (long al_row, u_dw adw_det)
protected function integer of_prepare_popup (long al_row, u_dw adw)
public subroutine of_pacteoffice ()
public function BOOLEAN of_ispacteofficeinstalled ()
public subroutine of_set_avisotooltipcita (long al_row)
public subroutine of_show_listarobef ()
public subroutine of_init_keyreader ()
public subroutine of_init_tgmarca ()
public subroutine of_init_plancortesia_popup ()
public function integer of_repositionrow (string as_emp, long al_numinterno)
public subroutine of_calendar_popup_stop ()
public subroutine of_init_datastores (string as_type)
public subroutine of_traduccion_dinamica ()
public subroutine of_hide_dwdatoscli (boolean ab_forzed)
public subroutine of_hide_tooltip (u_dw adw_source)
private subroutine of_set_orderby_obtenercolumnas (u_dw adw_dw, string as_orden, string as_ascdesc, ref string as_expresionordenacion, ref string as_nombresort, ref string as_columnaflechadw)
public function boolean of_hay_hscrollbar (datawindow adw_source)
public subroutine of_set_fleetbox ()
public subroutine of_launch_fleetbox ()
public subroutine of_init_multitaller ()
public subroutine of_check_multitaller (boolean ab_check)
public function boolean of_check_multitaller (string as_emp)
public function long of_retrieve (string as_emp, string as_tal, n_ds ads_source)
public function long of_retrieve (string as_emp, string as_tal, n_ds ads_source, any aa_params[])
end prototypes

event ue_timer;long ll_cliente
String ls_emp
Long   ll_numinterno
u_dw ldw_show
Long	ll_xpos
Long	ll_ypos

inv_timer.Stop()

choose case is_key
	case 'CITA'
		ldw_show = dw_show10
	case 'PRESUP'
		ldw_show = dw_show20
	case 'OT'
		ldw_show = dw_show30
	case 'OTDET'
		ldw_show = dw_s30det
	case 'CITADET'
		ldw_show = dw_s10det
	case else
		return
end choose

if not (ib_retrieving) and ldw_show.RowCount() > 0 then
	if il_row_flow > 0 and il_row_flow <= ldw_show.RowCount() then
//		ll_cliente   = ldw_show.GetItemNumber (il_row_flow,'clientefac')
//		if ll_cliente = il_flow_last_cliente then
//		else
//			il_flow_last_cliente = ll_cliente
//			inv_manager.Post of_rowfocuscliente (ll_cliente)
//		end if
		ls_emp        = ldw_show.GetItemString (il_row_flow,'emp')
		ll_numinterno = ldw_show.GetItemNumber (il_row_flow,'numinterno')
		if ll_numinterno > 0 then
			if il_flow_last_numinterno = ll_numinterno then
			else
				il_flow_last_numinterno = ll_numinterno
				inv_manager.Post of_rowfocusot (ls_emp,ll_numinterno)
				//iuo_flow.Post of_rowfocuschanged (il_row_flow,ldw_show,false)
			end if
		end if	
	end if
end if

if il_last_row_tooltip > 0 then
	ib_viewtooltip = true
	ll_xpos = ldw_show.PointerX()
	ll_ypos = ldw_show.PointerY()
	ll_xpos = UnitstoPixels(ll_xpos,XUnitstoPixels!)
	ll_ypos = UnitstoPixels(ll_ypos,YUnitstoPixels!)
	of_mousemove (ldw_show, ll_xpos, ll_ypos, il_last_row_tooltip)
end if
end event

event ue_mousemove;of_calendar_popup_stop()
// =====
// Ref.: 18741556467 - jdm - 23/05/2007
of_hide_popup()
// =====
end event

public subroutine of_resize ();u_dw		ldw[]

Long		ll_HeaderHeight
Long		ll_DetailHeight
Long		ll_width
Long		ll_width2
Long		ll_x
Long		ll_row
Long		ll_height
Long		ll_item
Long		ll_getrow
Integer	li_count
Integer	li_item

String	ls_classtable
Boolean  lb_pacteoffice
Boolean  lb_ShowROBEF
BOOLEAN	 lb_permitirCrear	// Ref.: 38411357550 - jdm - 05/11/2012

if not isvalid (inv_manager)       then return
if not (inv_manager.ib_configured) then return

if isvalid(iw_datoscli) then iw_datoscli.of_hide(handle(this))

sqlca.of_retrieve_begin ()
SetRedraw (false)

// Es más rápido no modificar atributos si para asignarles el mismo valor que ya tienen!
//r_back.Y            = 0
//uo_pin.Y            = 0
//uo_nuevo.Y          = 5
//uo_search.Y         = 5
//uo_cargacita.Y      = 5
//uo_view_backorder.Y = 5
//uo_other.y          = 5
//uo_keyreader.y      = 5
//uo_mecanicos.Y		 = 5
//uo_pacteoffice.Y	 = 5
//uo_robef.Y			 = 5
//dw_show10.X         = 0

r_back.X       = 0
r_back.Height  = 112
r_back.Width   = this.Width
//r_back.visible = false

ib_flowactive = false

ldw[1] = dw_show10
ldw[2] = dw_show20
ldw[3] = dw_show30
ldw[4] = dw_s30det
ldw[5] = dw_s10det

dw_show10.Y      = st_title.Y + st_title.Height + 16
dw_show10.Width  = this.Width  - dw_show10.X 
dw_show10.Height = this.Height - dw_show10.Y 

for li_item = 2 to upperbound(ldw)
//	ldw[li_item].X      = ldw[1].X
	ldw[li_item].Y      = ldw[1].Y
	ldw[li_item].Width  = ldw[1].Width
	ldw[li_item].Height = ldw[1].Height
next

uo_pin.X            = this.Width       - uo_pin.Width
uo_nuevo.X          = uo_pin.X         - uo_nuevo.Width       - 10
uo_search.X         = uo_nuevo.X       - uo_nuevo.Width       - 10
uo_cargacita.X      = uo_search.X      - uo_search.Width      - 10
uo_view_backorder.X = uo_search.X      - uo_search.Width      - 10
uo_other.X          = uo_cargacita.X   - uo_cargacita.width   - 10
uo_keyreader.X      = uo_other.X       - uo_other.width       - 10
uo_mecanicos.X		  = uo_keyreader.X   - uo_keyreader.width   - 10	// IPS: 06.03.2007 - 17921155263
uo_pacteoffice.X	  = uo_mecanicos.X   - uo_mecanicos.width   - 10
uo_robef.X			  = uo_pacteoffice.X - uo_pacteoffice.width - 10	// LMC - 25821051021 - 10/06/2009
uo_solicitud.X      = uo_keyreader.X   - uo_other.width       - 10
uo_solicitud.y      = uo_keyreader.y

if this.Height > st_fondo.Height + 50 then	
	this.ib_pinned = true
end if

if this.Height < st_fondo.Height + 5 then	
	this.ib_pinned = false
end if

uo_pin.ib_pinned = ib_pinned
uo_pin.of_initpin()

st_fondo.Width = this.width		//uo_pin.X

if (this.ib_pinned) then
	if not ib_nuevo_init then
		ib_nuevo_init = true
		// of_init_hoverbutton (uo_nuevo, 'toolbar24_nuevo.bmp','','TTOT30NEW')  // 29581009530  SJP  11-5-2010  se ha trasladado a of_init
	end if
	uo_nuevo.visible  = true
	uo_search.visible = true
	if upperbound (is_opcion) > 1 then
		st_title.enabled = true
	else
		st_title.enabled = false
	end if
	st_title.of_Set_color(upperbound(is_opcion))		// IPS:20.06.2007 - 18881515178
	if is_key = 'CITA'  or is_key = 'CITADET' then
		if not ib_cargacita_init then
			ib_cargacita_init = true
			of_init_hoverbutton (uo_cargacita, 'toolbar24_cargacita.bmp','','TTOT10PLANCITA')
		end if
		uo_cargacita.Visible          = true
	else
		uo_other.visible = inv_manager.ib_recepcionista
	end if
	of_set_keyreader ()
	// IPS: 06.03.2007 - 17921155263
	if not uo_keyreader.visible then
		uo_mecanicos.X = uo_keyreader.X
	end if
	if is_key = 'OT' or is_key = 'OTDET' then   // 43230924274  SJP  3-2-2014  Se trata también la vista OTDET: OT + intervención
		if not ib_mecanicos_init then
			ib_mecanicos_init = true
			of_init_hoverbutton (uo_mecanicos, 'toolbar24_tiempos.bmp','','MECANICOS')		// IPS: 06.03.2007 - 17921155263
		end if
		uo_mecanicos.visible = TRUE
		uo_pacteoffice.X		= uo_mecanicos.X - uo_mecanicos.width - 20
		uo_robef.X			   = uo_pacteoffice.X - uo_pacteoffice.width - 15			// LMC - 25821051021 - 10/06/2009 <<<
		if of_ispacteofficeinstalled () then
			lb_pacteoffice = TRUE
		end if
	end if	
else
	uo_cargacita.visible      = false
	uo_nuevo.visible          = false
	uo_search.visible         = false
	uo_keyreader.Visible      = false
	st_title.enabled          = false
	uo_other.visible          = false
	uo_view_backorder.visible = false
	uo_mecanicos.visible      = false		// IPS: 06.03.2007 - 17921155263
	lb_pacteoffice            = false
	uo_fleetbox.visible		  = false		// FAB - 0000164 - 04/09/2014 
end if

uo_fleetbox.X		  = uo_robef.X 		- uo_robef.Width 		  - 10	// FAB - 0000164 - 04/09/2014 

if lb_pacteoffice and not ib_pacteoffice_init then
	ib_pacteoffice_init = true
	of_init_hoverbutton (uo_pacteoffice, 'toolbar24_pacteoffice.bmp'   ,'','NEWORPACTEOFFICE')
end if

uo_pacteoffice.visible = lb_pacteoffice

choose case is_key
	case 'CITA', 'CITADET'
		ls_classtable = 'TTOTCAB10'
	case 'PRESUP'
		ls_classtable = 'TTOTCAB20'
	case 'OT','OTDET'
		ls_classtable = 'TTOTCAB30'
		// LMC - 25821051021 - 22/07/2009 >>>
		if isvalid(inv_robef) then
			If inv_robef.of_check_available() = SUCCESS Then
				lb_ShowROBEF  = True
			end if
		End If
		// LMC - 25821051021 - 22/07/2009 <<<
end choose

if lb_ShowROBEF and not ib_robef_init then
	ib_robef_init = true
	of_init_hoverbutton (uo_robef, 'toolbar24_robef.bmp','','LISTADOROBEF')			// LMC - 25821051021 - 10/06/2009
end if

uo_robef.visible = lb_ShowROBEF				// LMC - 25821051021 - 11/06/2009

if gnv_app.inv_denied.of_getacceso ('TYTABLA',upper(ls_classtable),'*','INSERT') then
else	
	uo_nuevo.visible = false
end if

// =====
// Ref.: 38411357550 - jdm - 05/11/2012
if ( IsValid(iuo_panel) ) then
	if ( iuo_panel.ib_hierarchical ) then
		ib_fromHierarchicalPanel = TRUE
	end if
elseif ( IsValid(iuo_panel_cortesia) ) then
	if ( iuo_panel_cortesia.ib_hierarchical ) then
		ib_fromHierarchicalPanel = TRUE
	end if
end if

if ( ib_fromHierarchicalPanel ) then
	uo_nuevo.Visible 		= FALSE
	uo_pacteOffice.Visible 	= FALSE
	uo_keyreader.Visible 	= FALSE
end if
// =====

// FAB - 0000164 - 04/09/2014 >>>>>>>>>>
if not lb_ShowROBEF then
	uo_fleetbox.X			  = uo_pacteoffice.X - uo_pacteoffice.width - 10
	if not uo_pacteoffice.Visible then
		uo_fleetbox.X			  = uo_mecanicos.X - uo_mecanicos.width - 10
		
		if not uo_mecanicos.visible then
			uo_fleetbox.X			  = uo_keyreader.X - uo_keyreader.width - 10
			
			if not uo_keyreader.visible then
				uo_fleetbox.X			  = uo_other.X - uo_other.width - 10
				
				if not uo_other.visible then
					
				end if
			end if
		end if
	end if
end if

of_set_fleetbox( )
// FAB - 0000164 - 04/09/2014 <<<<<<<<<<

of_adjust_width()

ib_flowactive = true

ll_HeaderHeight = long(dw_show10.Object.DataWindow.Header.Height)
ll_DetailHeight = long(dw_show10.Object.DataWindow.Detail.Height)

dw_show30.Modify ('r_target.X     = "1"')
dw_show30.Modify ('r_target.Y     = "'+ string (ll_HeaderHeight)+ '"')
dw_show30.Modify ('r_target.Width = "'+ string (UnitsToPixels(dw_show10.Width ,XUnitsToPixels!) - 22)+'"')
dw_show30.Modify ('r_target.Height= "'+ string (UnitsToPixels(dw_show10.Height,YUnitsToPixels!) - 6 - ll_HeaderHeight)+'"')

dw_s30det.Modify ('r_target.X     = "1"')
dw_s30det.Modify ('r_target.Y     = "'+ string (ll_HeaderHeight)+ '"')
dw_s30det.Modify ('r_target.Width = "'+ string (UnitsToPixels(dw_show10.Width ,XUnitsToPixels!) - 22)+'"')
dw_s30det.Modify ('r_target.Height= "'+ string (UnitsToPixels(dw_show10.Height,YUnitsToPixels!) - 6 - ll_HeaderHeight)+'"')

dw_show10.Modify ('r_drag.X     = "0"')
dw_show10.Modify ('r_drag.Y     = "'+ string (ll_HeaderHeight)+ '"')
dw_show10.Modify ('r_drag.Width = "'+ string (UnitsToPixels(dw_show10.Width ,XUnitsToPixels!) - 22)+'"')
dw_show10.Modify ('r_drag.Height= "'+ string (ll_DetailHeight)    +'"')

dw_s10det.Modify ('r_drag.X     = "0"')
dw_s10det.Modify ('r_drag.Y     = "'+ string (ll_HeaderHeight)+ '"')
dw_s10det.Modify ('r_drag.Width = "'+ string (UnitsToPixels(dw_show10.Width ,XUnitsToPixels!) - 22)+'"')
dw_s10det.Modify ('r_drag.Height= "'+ string (ll_DetailHeight)    +'"')

dw_show20.Modify ('r_drag.X     = "1"')
dw_show20.Modify ('r_drag.Y     = "'+ string (ll_HeaderHeight)+ '"')
dw_show20.Modify ('r_drag.Width = "'+ string (UnitsToPixels(dw_show10.Width ,XUnitsToPixels!) - 22)+'"')
dw_show20.Modify ('r_drag.Height= "'+ string (ll_DetailHeight)    +'"')

dw_show30.Modify ('r_drag.X     = "1"')
dw_show30.Modify ('r_drag.Y     = "'+ string (ll_HeaderHeight)+ '"')
dw_show30.Modify ('r_drag.Width = "'+ string (UnitsToPixels(dw_show10.Width ,XUnitsToPixels!) - 22)+'"')
dw_show30.Modify ('r_drag.Height= "'+ string (ll_DetailHeight)    +'"')

dw_s30det.Modify ('r_drag.X     = "1"')
dw_s30det.Modify ('r_drag.Y     = "'+ string (ll_HeaderHeight)+ '"')
dw_s30det.Modify ('r_drag.Width = "'+ string (UnitsToPixels(dw_show10.Width ,XUnitsToPixels!) - 22)+'"')
dw_s30det.Modify ('r_drag.Height= "'+ string (ll_DetailHeight)    +'"')

dw_show10.Modify ('r_drag.Visible = "0"')
dw_s10det.Modify ('r_drag.Visible = "0"')
dw_show20.Modify ('r_drag.Visible = "0"')
dw_show30.Modify ('r_drag.Visible = "0"')
dw_s30det.Modify ('r_drag.Visible = "0"')

dw_show10.Modify ('r_target.Visible = "0"')
dw_show20.Modify ('r_target.Visible = "0"')
dw_show30.Modify ('r_target.Visible = "0"')
dw_s30det.Modify ('r_target.Visible = "0"')

dw_show10.Visible = false
dw_show20.Visible = false
dw_show30.Visible = false
dw_s30det.Visible = false

if ib_haygroupby then
	if this.width > il_minimumwidth then
		// IPS:05.07.2006 - SMS
		dw_show10.VScrollBar = true
		dw_show10.hscrollbar = true	
		dw_show10.inv_flatscrollbar.of_init (dw_show10)

		dw_s10det.VScrollBar = true
		dw_s10det.hscrollbar = true	
		dw_s10det.inv_flatscrollbar.of_init (dw_s10det)
		
		dw_show20.VScrollBar = true
		dw_show20.hScrollBar = true
		dw_show20.of_set_flatscroll(6)
		dw_show30.hscrollbar = true
		dw_show30.inv_flatscrollbar.of_init (dw_show30)
		dw_s30det.hscrollbar = true
		dw_s30det.inv_flatscrollbar.of_init (dw_s30det)
	end if
end if

of_traduccion_dinamica()

choose case is_key
	case 'CITA'
		dw_show10.Visible = true
	case 'PRESUP'
		dw_show20.Visible = true
	case 'OT'
		dw_show30.Visible = true
	case 'OTDET'
		dw_s30det.Visible = true
	case 'CITADET'
		dw_s10det.Visible = true
end choose

of_set_tooltip()

of_set_detailcolor()

if ib_retrieving = false then
	dw_show10.SetRedraw(true)
	dw_show20.SetRedraw(true)
	dw_show30.SetRedraw(true)
	dw_s30det.SetRedraw(true)
	dw_s10det.SetRedraw(true)
	SetRedraw (true)
end if

sqlca.of_retrieve_end ()

end subroutine

public subroutine of_rowfocuschanged (long al_row);
end subroutine

public subroutine of_losefocus ();
end subroutine

public subroutine of_scrolltotarea (long al_tarea);Long ll_find
Long ll_item
u_dw ldw_show[3]

if ib_haygroupby then return

ldw_show[1] = dw_show10
ldw_show[2] = dw_show20
ldw_show[3] = dw_show30

for ll_item = 1 to 3
	if ldw_show[ll_item].Visible then
		ll_find = ldw_show[ll_item].Find ('Tarea = ' + string (al_tarea),1,ldw_show[ll_item].RowCount())
		if ll_find > 0 then
			if ll_find > 1 then
				ldw_show[ll_item].ScrollToRow (ll_find - 1)
			end if
			ldw_show[ll_item].ScrollToRow (ll_find)		
			Post of_flashrow (ldw_show[ll_item],ll_find)
		end if
	end if
next
end subroutine

public subroutine of_search ();Pointer old_pointer
n_cst_manto_param lnv_manto_param

Long ll_numinterno
Long ll_numinterno2
Long ll_find

String ls_emp2

inv_manager.of_clicked (0,'',0)
inv_manager.of_set_bussy (true)
old_pointer = setpointer (hourglass!)
event ue_parentnotify ('SHOW_DATOSCLI=HIDEFORCE')

lnv_manto_param = create n_cst_manto_param
lnv_manto_param.ia_param[1] = 0
lnv_manto_param.ia_param[2] = inv_manager.is_empwrk
choose case is_key
	case 'CITA', 'CITADET'
		lnv_manto_param.ia_param[3] = 10		
	case 'PRESUP'
		lnv_manto_param.ia_param[3] = 20		
	case 'OT','OTDET'
		lnv_manto_param.ia_param[3] = 30		
end choose
inv_manager.of_set_notestimer(FALSE)
// #38281200049#
sqlca.of_verifytrans_outside('u_calendar_ot.of_search.1')
OpenWithParm (w_search_ttotcab, lnv_manto_param)
// #38281200049#
sqlca.of_verifytrans_outside('u_calendar_ot.of_search.2')

if lnv_manto_param.ii_result = lnv_manto_param.RES_SUCCESS then
	Event ue_parentnotify ('CLICKONROW')
	ll_numinterno = lnv_manto_param.ia_param[1]
	
	// Reposicionamos row por si la ot se ha generado desde otro puesto de icar.
	lnv_manto_param.ia_param[1] =  inv_manager.is_empwrk
	lnv_manto_param.ia_param[2] =  ll_numinterno
	
	ll_find = idw_show.of_Find ('numinterno = ' + string (ll_numinterno))
	if ll_find > 0 then
		if ll_find = idw_show.GetRow () then
			// Se fuerza el repintado del marco azul, ya que el scrolltorow no lo dispara
			of_getrow (true)
		end if
		idw_show.ScrollToRow (ll_find)
	else
		if is_key = 'OTDET' then
			of_retrieve()
			ll_find = idw_show.of_Find ('numinterno = ' + string (ll_numinterno))
			if ll_find > 0 then
				idw_show.ScrollToRow (ll_find)
			end if
		else
			ls_emp2        = string(lnv_manto_param.ia_param[1])
			ll_numinterno2 = long  (lnv_manto_param.ia_param[2])
			of_repositionrow(ls_emp2, ll_numinterno2)
		end if		
	end if
end if

inv_manager.of_set_notestimer(TRUE)
inv_manager.of_set_bussy (false)

destroy (lnv_manto_param)

setpointer (old_pointer)
idw_show.SetFocus()

// #38281200049#
sqlca.of_verifytrans_outside('u_calendar_ot.of_search.3')

end subroutine

public subroutine of_window_vista ();n_cst_calendar_menu lnv_calendar_menu

Long	ll_old_Y
Long	ll_old_X

this.SetRedraw(false)

ll_old_X = st_title.X
ll_old_Y = st_title.Y

st_title.X = st_title.X - 32
st_title.Y = st_title.Y + gnv_app.inv_screen.of_get_titleheightgap() - 2

lnv_calendar_menu              = create n_cst_calendar_menu
lnv_calendar_menu.ist_Activo   = st_title
lnv_calendar_menu.il_index     = ii_vista
lnv_calendar_menu.il_menu      = 0
lnv_calendar_menu.ib_Exactsize = true
lnv_calendar_menu.is_opcion    = is_opcion

lnv_calendar_menu.of_go()

st_title.X = ll_old_X
st_title.Y = ll_old_Y

this.SetRedraw(true)

end subroutine

public subroutine of_dragcero ();of_show_dragtarget (dw_show10,false)
of_show_dragtarget (dw_show20,false)
of_show_dragtarget (dw_show30,false)
of_show_dragtarget (dw_s30det,false)
of_show_dragtarget (dw_s10det,false)

of_show_dragsource (dw_show10,0,false)
of_show_dragsource (dw_show20,0,false)
of_show_dragsource (dw_show30,0,false)
of_show_dragsource (dw_s30det,0,false)
of_show_dragsource (dw_s10det,0,false)

dw_show10.SetRedraw(true)
dw_show20.SetRedraw(true)
dw_show30.SetRedraw(true)
dw_s30det.SetRedraw(true)
dw_s10det.SetRedraw(true)

dw_show10.ib_dragflag = false
dw_show20.ib_dragflag = false
dw_show30.ib_dragflag = false
dw_s30det.ib_dragflag = false
dw_s10det.ib_dragflag = false
of_getrow( true )
end subroutine

public subroutine of_changevista ();Boolean  lb_ShowROBEF

il_last_row_tooltip = 0
il_last_xpos        = -10000
il_last_ypos        = -10000
Long ll_titleWidth

lb_ShowROBEF = False

if ii_vista > 0 and ii_vista <= upperbound(is_opcion) then
else
	ii_vista = 1
end if

il_last_row_tooltip_text = 0

st_title.Text = is_opcion[ii_vista]
is_key        = is_opckey[ii_vista]

of_mouse_capture()
this.SetRedraw(false)


choose case is_key
	case 'CITA'
		of_init_datastores ('10')
		dw_show10.visible         = true
		dw_s10det.visible         = false   // 0000312  SJP  13-3-2014
		dw_show20.visible         = false
		dw_show30.visible         = false
		dw_s30det.visible         = false
		idw_show                  = dw_show10
		uo_nuevo.is_tooltip       = of_get_classtext ('LITERAL','TOOLTIP','TTOT10NEW') 
		uo_search.is_tooltip      = of_get_classtext ('LITERAL','TOOLTIP','TTOT10SEARCH')
		ii_dragid                 = inv_manager.DD_OTCITA
		uo_view_backorder.Visible = false
		uo_mecanicos.Visible		  = false	// IPS: 06.03.2007 - 17921155263
	case 'CITADET'		
		of_init_datastores ('10det')
		dw_show10.visible         = false  // 0000312  SJP  13-3-2014  antes: true 
		dw_s10det.visible         = true   // 0000312  SJP  13-3-2014
		dw_show20.visible         = false
		dw_show30.visible         = false
		dw_s30det.visible         = false
		idw_show                  = dw_s10det
		uo_nuevo.is_tooltip       = of_get_classtext ('LITERAL','TOOLTIP','TTOT10NEW') 
		uo_search.is_tooltip      = of_get_classtext ('LITERAL','TOOLTIP','TTOT10SEARCH')
		ii_dragid                 = inv_manager.DD_OTCITA
		uo_view_backorder.Visible = false
		uo_mecanicos.Visible		  = false	// IPS: 06.03.2007 - 17921155263
	case 'PRESUP'
		of_init_datastores ('20')
		dw_show10.visible         = false
		dw_s10det.visible         = false   // 0000312  SJP  13-3-2014
		dw_show20.visible         = true
		dw_show30.visible         = false
		dw_s30det.visible         = false
		if ib_haygroupby then
			dw_show20.hscrollbar   = true
		end if
		idw_show                  = dw_show20
		uo_nuevo.is_tooltip       = of_get_classtext ('LITERAL','TOOLTIP','TTOT20NEW') 
		uo_search.is_tooltip      = of_get_classtext ('LITERAL','TOOLTIP','TTOT20SEARCH')
		ii_dragid                 = inv_manager.DD_OTPRESUP
		uo_view_backorder.Visible = false
		uo_mecanicos.Visible		  = false	// IPS: 06.03.2007 - 17921155263
	case 'OT'
		of_init_datastores ('30')
		dw_show10.visible         = false
		dw_s10det.visible         = false   // 0000312  SJP  13-3-2014
		dw_show20.visible         = false
		dw_show30.visible         = true
		dw_s30det.visible         = false
		if ib_haygroupby then
			dw_show30.hscrollbar   = true
		end if
		if not ib_backorder_init then
			ib_backorder_init = true
			of_init_hoverbutton (uo_view_backorder, 'toolbar24_recambiopend.bmp','','VIEWBACKORDER')
		end if
		uo_view_backorder.Visible = true
		idw_show                  = dw_show30
		uo_nuevo.is_tooltip       = of_get_classtext ('LITERAL','TOOLTIP','TTOT30NEW') 
		uo_search.is_tooltip      = of_get_classtext ('LITERAL','TOOLTIP','TTOT30SEARCH')
		ii_dragid                 = inv_manager.DD_OTCURSO
		if not ib_mecanicos_init then
			ib_mecanicos_init = true
			of_init_hoverbutton (uo_mecanicos, 'toolbar24_tiempos.bmp','','MECANICOS')		// IPS: 06.03.2007 - 17921155263
		end if
		uo_mecanicos.Visible		  = true	// IPS: 06.03.2007 - 17921155263
		lb_ShowROBEF				  = true // LMC - 25821051021 - 11/06/2009
	case 'OTDET'
		of_init_datastores ('30det')
		dw_show10.visible         = false
		dw_s10det.visible         = false   // 0000312  SJP  13-3-2014
		dw_show20.visible         = false
		dw_show30.visible         = false
		dw_s30det.visible         = true
		if ib_haygroupby then
			dw_s30det.hscrollbar   = true
		end if
		if not ib_backorder_init then
			ib_backorder_init = true
			of_init_hoverbutton (uo_view_backorder, 'toolbar24_recambiopend.bmp','','VIEWBACKORDER')
		end if
		uo_view_backorder.Visible = true
		idw_show                  = dw_s30det
		uo_nuevo.is_tooltip       = of_get_classtext ('LITERAL','TOOLTIP','TTOT30NEW') 
		uo_search.is_tooltip      = of_get_classtext ('LITERAL','TOOLTIP','TTOT30SEARCH')
		ii_dragid                 = inv_manager.DD_OTCURSO
		if not ib_mecanicos_init then
			ib_mecanicos_init = true
			of_init_hoverbutton (uo_mecanicos, 'toolbar24_tiempos.bmp','','MECANICOS')		// IPS: 06.03.2007 - 17921155263
		end if
		uo_mecanicos.Visible		  = true	// IPS: 06.03.2007 - 17921155263
		lb_ShowROBEF				  = true // LMC - 25821051021 - 11/06/2009
end choose

of_traduccion_dinamica()

// LMC - 25821051021 - 22/07/2009 >>>
uo_robef.visible = False

If lb_ShowROBEF Then
	if gnv_app.inv_empwrkmanager.il_pais = 121 then
		If IsValid(inv_robef) Then
		Else
			gnv_app.inv_nvocache.of_register ('n_cst_tmrobef', inv_robef)
		End If
		If inv_robef.of_check_available() = SUCCESS Then
			if not ib_robef_init then
				ib_robef_init = true
				of_init_hoverbutton (uo_robef, 'toolbar24_robef.bmp','','LISTADOROBEF')			// LMC - 25821051021 - 10/06/2009
			end if
			uo_robef.visible = True
		End If
	end if
End If
// LMC - 25821051021 - 22/07/2009 <<<

if is_key = 'CITA' or is_key = 'CITADET' then
	if not ib_cargacita_init then
		ib_cargacita_init = true
		of_init_hoverbutton (uo_cargacita, 'toolbar24_cargacita.bmp','','TTOT10PLANCITA')
	end if
	uo_other.visible     = false
	uo_cargacita.Visible = true
else
	uo_other.visible     = inv_manager.ib_recepcionista
	uo_cargacita.Visible = false
end if


if upperbound(is_opcion) > 3 then
	ll_titleWidth = uo_keyreader.X
	if uo_pacteoffice.visible then
		ll_titleWidth = uo_pacteoffice.X
	end if
	st_title.width = ll_titleWidth
	if st_title.width > 1000 then st_title.width = 1000
	// =====
	// Ref.: 20851247260 - jdm - 18/12/2007
	//	if st_title.width <  600 then st_title.width = 600
		//IPS:04.11.2014-0001583
	//	if st_title.width <  750 then st_title.width = 750
	if st_title.width <  890 then st_title.width = 890
		//
else
	st_title.width = 750/*600*/	// Ref.: 20851247260 - jdm - 18/12/2007
end if

of_set_keyreader()

of_set_fleetbox( )		// FAB - 0000164 - 04/09/2014 

uo_nuevo.of_init()

uo_search.of_init()

ib_forcegroupby = true

if ib_canretrieve then
	of_retrieve()
else
	ib_canretrieve = true
end if

//dw_show30.hscrollbar = true
dw_s30det.hscrollbar = true

this.SetRedraw(true)

of_mouse_release()

end subroutine

public subroutine of_init ();Long		ll_color
Long		ll_tooltip

Integer	li_count
Integer	li_band
Integer	li_dw

String	ls_lista[]
String	ls_null[]
String	ls_band[2]={'header','detail'}
String	ls_sql

Boolean	lb_noes_sqlserver		//JMR:21.10.2009 27581451402

f_SetPlatform (inv_platform, true)
of_getparentwindow (iw_parent)
//of_translate(dw_datoscli)
of_translate()

dw_show30.modify('primero.width=0')

if isvalid (inv_manager) then
	inv_manager.of_get_datastore ('tallermarca_emp', ids_tallermarca)
end if

if ib_haygroupby then
	of_retrieve_tallermarca()
end if

of_set_tooltip()

is_tooltip_PiezasNoServidas = of_get_classtext ('DATAWINDOW','DW_MANTO_TTOTCAB_STATUS','PIEZASNOSERVIDAS')

if is_tooltip_PiezasNoServidas > '' then
else
	is_tooltip_PiezasNoServidas  = ''
end if

choose case is_tipopanel
	case 'CITA'
		is_opcion[1] = of_get_classtext ('LITERAL','AGENDA','VISTATTOT10')
		is_opcion[2] = of_get_classtext ('LITERAL','AGENDA','VISTATTOT20')
		
		is_opckey[1] = 'CITA'
		is_opckey[2] = 'PRESUP'
		
		if ib_haygroupby then
			is_opcion[3] = of_get_classtext ('LITERAL','AGENDA','VISTATTOT1D')
			is_opckey[3] = 'CITADET'
			
			is_tooltip_det[1] = of_get_classtext('LITERAL'   ,'W_MANTO_TCVEHFACTUR'       ,'ESCORTESIA')
		end if
		
		if ii_vista > 0 then
		else
			ii_vista = 1
			is_key   = 'CITA'
		end if
		
		// =====
		// Ref.: 28041025046 - jdm - 10/02/2010
		is_tooltip_det[2] = of_get_classText("LITERAL", "TOOLTIP", "CITA_PIEZASRESERVADAS")
		is_tooltip_det[3] = of_get_classText("LITERAL", "TOOLTIP", "CITA_PIEZASBACKORDER")	
		// =====


		
		string taller1 = 'e8c341450e5b4a10abde50fe55fcc5ec'
		string taller2 = '743746f2a0be4254b88360b4abfab779'
		uo_servicebus.of_start(taller1)

		

	case 'OT'
		is_opcion[1] = of_get_classtext ('LITERAL','AGENDA','VISTATTOT10')
		is_opcion[2] = of_get_classtext ('LITERAL','AGENDA','VISTATTOT20')
		is_opcion[3] = of_get_classtext ('LITERAL','AGENDA','VISTATTOT30')

		is_opckey[1] = 'CITA'
		is_opckey[2] = 'PRESUP'
		is_opckey[3] = 'OT'

		if ib_haygroupby then
			is_opcion[4] = of_get_classtext ('LITERAL','AGENDA','VISTATTOT3D')
			is_opckey[4] = 'OTDET'
			is_tooltip_det[1] = of_get_classtext('LITERAL'   ,'W_MANTO_TCVEHFACTUR'       ,'ESCORTESIA')
			is_tooltip_det[2] = of_get_classtext('LITERAL'   ,'MANTO_TITLE_TGVEHGARANTIA2','*')
			is_tooltip_det[3] = of_get_classtext('DATAWINDOW','DW_MANTO_TTOTCAB_STATUS'   ,'PIEZASNOSERVIDAS')
			is_tooltip_det[4] = of_get_classtext('LITERAL'   ,'U_PANEL_PRESENCIA'         ,'ERRORFICHAJE')
		end if
		
		// Ref.: 21980853234 - jdm - 22/05/2008
		is_tooltip_det[5] = of_get_classText("LITERAL", "TOOLTIP", "OTINTERCERRADAS")

		if ii_vista > 0 then
		else
			ii_vista = 3
			is_key = 'OT'
		end if
end choose

ll_tooltip = inv_tooltip.AddTool (st_title,of_get_classtext ('LITERAL','TOOLTIP','CHANGEVISTA'),25)
inv_tooltip.SetTipText (st_title,ll_tooltip,of_get_classtext ('LITERAL','TOOLTIP','CHANGEVISTA'))

of_add_classtext('LITERAL','TOOLTIP','SOLICITUD','Solicitudes cita taller')


of_init_hoverbutton (uo_other    , 'toolbar24_contacto.bmp' ,''                          ,'DOCINT2')
of_init_hoverbutton (uo_keyreader, 'toolbar24_keyreader.bmp',''                          ,'KEYREADER')
of_init_hoverbutton (uo_solicitud, 'toolbar24_iphone.bmp',''                          ,'SOLICITUD')
of_init_hoverbutton (uo_search   , 'toolbar24_search.bmp'   ,'toolbar24_search_hover.bmp','TTOT30SEARCH')
of_init_hoverbutton (uo_nuevo		, 'toolbar24_nuevo.bmp','toolbar24_nuevo_hober.bmp','TTOT30NEW')  // 29581009530  SJP  11-5-2010
of_init_hoverbutton (uo_fleetbox	, 'toolbar24_fleetbox.png','','FLETBOXSTATUS')  // FAB - 0000164 - 04/09/2014 

choose case is_tipopanel
	case 'CITA'
	case else
		uo_solicitud.visible = false
end choose
uo_search.ib_enabled = true
uo_other.Inv_ToolTip.RelayMsg(This)

uo_pin.ib_pinned = ib_pinned

uo_pin.of_set_bitmap_roll()
uo_pin.of_init()
uo_pin.of_initpin()

ll_color = gf_get_color ('APP_FONDO')
st_fondo.Backcolor = ll_color
st_title.Backcolor = ll_color
r_back.FillColor   = ll_color
r_back.LineColor   = ll_color

of_set_detailcolor()

choose case gnv_app.of_get_sysparam('DWSTORAGELARGE')
	case '1','S'
		dw_show10.Object.Datawindow.Storagepagesize='large'
		dw_show20.Object.Datawindow.Storagepagesize='large'
		dw_show30.Object.Datawindow.Storagepagesize='large'
end choose

inv_manager.of_get_datastore('otstatus',ids_otstatus)

if isvalid (ids_ttotcab) then
else
	ids_ttotcab            = create n_ds
	ids_ttotcab.DataObject = 'dw_main_ttotcab'
	ids_ttotcab.of_setTransObject (sqlca)
end if

dw_show10.of_SetUpdateAble (false)
dw_show20.of_SetUpdateAble (false)
dw_show30.of_SetUpdateAble (false)
dw_s30det.of_SetUpdateAble (false)
dw_s10det.of_SetUpdateAble (false)	// FAB - 5/12/2007 20661053029

dw_show10.of_setTransObject (sqlca)
dw_show20.of_setTransObject (sqlca)
dw_show30.of_setTransObject (sqlca)
dw_s30det.of_setTransObject (sqlca)
dw_s10det.of_setTransObject (sqlca)	// FAB - 5/12/2007 20661053029

if ib_haygroupby then
	of_get_columnlist()
end if

ib_initialized = true

of_changevista()

inv_timer = create n_tmg_base
if isvalid (inv_timer) then
	inv_timer.inv_requestor = this
end if

Post of_getrow(true)

end subroutine

public subroutine of_filter ();String	ls_recep[]
String	ls_filtro, ls_filter, ls_filter2

Long		ll_item
Long		ll_max

Boolean	lb_10_filtrado
Boolean	lb_20_filtrado
Boolean	lb_30_filtrado
Boolean	lb_30det_filtrado


if not ib_haygroupby then
	ls_recep = inv_manager.inv_filter.is_multidequien
	
	ll_max    = upperbound (ls_recep)
	for ll_item = 1 to ll_max
		if trim(ls_recep [ll_item]) > '' then
			if ls_filtro > '' then
				ls_filtro = ls_filtro + ' or '
			end if
			ls_filtro = ls_filtro + ' recepcionista ="' + upper(trim(ls_recep[ll_item])) + '"'
		end if
	next
	if ls_filtro > '' then
		ls_filtro = + ' AND (' + ls_filtro + ')'
	end if
end if

ls_filtro = '(status = 10 and cerrada = 0) ' + ls_filtro

//dw_show10.of_filter (ls_filtro)
//dw_show20.of_filter ('status = 20 and cerrada = 0')
//dw_show30.of_filter ('status = 30 and cerrada = 0')
//dw_s30det.of_filter ('status = 30 and cerrada = 0')
dw_s10det.of_filter ('status = 10 and cerrada = 0') // FAB - 5/12/2007 20661053029

is_filter_ot				= 'status = 30 and cerrada = 0' 
is_filter_presupuesto	= 'status = 20 and cerrada = 0'

if ib_filtrar then
	ls_filter = "Recepcionista = '" + upper(gnv_app.inv_usuario.is_uid) + "'"
	if ib_haygroupby then
		dw_show10.of_filter (ls_filtro + ' and ' + ls_filter)
		lb_10_filtrado = true
	end if
	dw_show20.of_filter (is_filter_presupuesto + ' and ' + ls_filter)
	ls_filter2 = is_filter_ot + ' and  ' + ls_filter
	dw_show30.of_filter (ls_filter2)
	dw_s30det.of_filter (ls_filter2)
	lb_20_filtrado    = true
	lb_30_filtrado    = true
	lb_30det_filtrado = true
end if 

if not lb_10_filtrado    then dw_show10.of_filter (ls_filtro)
if not lb_20_filtrado    then dw_show20.of_filter ('status = 20 and cerrada = 0')
if not lb_30_filtrado    then dw_show30.of_filter ('status = 30 and cerrada = 0')
if not lb_30det_filtrado then dw_s30det.of_filter ('status = 30 and cerrada = 0')


end subroutine

public subroutine of_retrieve ();String ls_emp
String ls_taller

Long   ll_row
Long	 ll_new
Long	 ll_width
Long	 ll_width_mas

Boolean	lb_multitaller

if not ib_initialized then return

ib_forcegroupby = true

ls_emp    = gnv_app.inv_empwrkmanager.is_empwrk
ls_taller = gnv_app.inv_empwrkmanager.is_talwrk

SetPointer(HourGlass!)

if ib_haygroupby then
	of_retrieve_tallermarca()
end if

il_last_row_mousemove = 0
ib_retrieving         = true

of_show_marco_off ()
SetRedraw(false)

of_set_keyreader ()

of_set_fleetbox ()		// FAB - 0000164 - 04/09/2014 

if gnv_app.inv_empWrkManager.ids_tal.rowcount()>0 then	//IPS:27.01.2011-32201734286
	// =====
	// Ref.: 28041025046 - jdm - 10/02/2010
	if ( gnv_app.inv_empWrkManager.ids_tal.GetItemNumber(1, "ReservarPiezasEnCita") > 0 ) then
		dw_show10.Modify('p_acabada.Visible="1~tif (tooltip > space(0) or statusencurso > space(0) , 0 , (if (totallineasrec > 0 and lineasbackorder = 0 and (totallineasrec = lineasreservadas + lineasconfirmadas), 1, 0)))"')
		dw_s10det.Modify('p_acabada.Visible="1~tif (tooltip > space(0) or statusencurso > space(0) , 0 , (if (totallineasrec > 0 and lineasbackorder = 0 and (totallineasrec = lineasreservadas + lineasconfirmadas), 1, 0)))"')
		dw_show10.Modify('r_aviso.Visible="1~tif (statusencurso > space(0) or (totallineasrec > 0 and (totallineasrec > lineasreservadas + lineasconfirmadas or lineasparciales > 0)),1,0)"')
		dw_s10det.Modify('r_aviso.Visible="1~tif (statusencurso > space(0) or (totallineasrec > 0 and (totallineasrec > lineasreservadas + lineasconfirmadas or lineasparciales > 0)),1,0)"')
	else
		dw_show10.Modify("p_acabada.Visible='0'")			
		dw_s10det.Modify("p_acabada.Visible='0'")
		dw_show10.Modify("r_aviso.Visible='1~tif (statusencurso > space(0),1,0)'")
		dw_s10det.Modify("r_aviso.Visible='1~tif (statusencurso > space(0),1,0)'")
	end if
	// =====
//IPS:27.01.2011-32201734286	
else
	dw_show10.Modify("p_acabada.Visible='0'")			
	dw_s10det.Modify("p_acabada.Visible='0'")
	dw_show10.Modify("r_aviso.Visible='1~tif (statusencurso > space(0),1,0)'")
	dw_s10det.Modify("r_aviso.Visible='1~tif (statusencurso > space(0),1,0)'")
end if
//

if isvalid(ids_show10) then
	dw_show10.of_ShareDataoff()
	if ids_show10.RowCount() > 0 then ids_show10.of_Reset()
end if
if isvalid(ids_show20) then
	dw_show20.of_ShareDataoff()
	if ids_show20.RowCount() > 0 then ids_show20.of_Reset()
end if
if isvalid(ids_show30) then
	dw_show30.of_ShareDataoff()
	if ids_show30.RowCount() > 0 then ids_show30.of_Reset()
end if
if isvalid(ids_s30det) then
	if ids_s30det.RowCount() > 0 then ids_s30det.of_Reset()
end if
if isvalid(ids_s10det) then
	if ids_s10det.RowCount() > 0 then ids_s10det.of_Reset()	// FAB - 5/12/2007 20661053029
end if

if dw_show10.RowCount() > 0 then dw_show10.of_Reset()
if dw_show20.RowCount() > 0 then dw_show20.of_Reset()
if dw_show30.RowCount() > 0 then dw_show30.of_Reset()
if dw_s30det.RowCount() > 0 then dw_s30det.of_Reset()
if dw_s10det.RowCount() > 0 then dw_s10det.of_Reset()	// FAB - 5/12/2007 20661053029

if ids_otstatus.RowCount() > 0 then
else
	ids_otstatus.of_Retrieve ()	//JMR:4.1.2010 29191454218 - incluso los que tengan "Intervencion = 1"
end if

choose case is_key
	case 'CITA'
		dw_show10.Visible = true
	case 'PRESUP'
		dw_show20.Visible = true
	case 'OT'
		dw_show30.Visible = true
	case 'OTDET'
		dw_s30det.Visible = true
	case 'CITADET'
		dw_s10det.Visible = true
end choose

if ls_taller > '' and ls_emp > '' then
	choose case is_key
		case 'CITA'
			// FAB - 0002566 - 22/09/2015 >>>>>>>>>>
			//ids_show10.of_Retrieve (ls_emp,ls_taller)
			of_retrieve (ls_emp, ls_taller, ids_show10)
			// FAB - 0002566 - 22/09/2015 <<<<<<<<<<
		case 'PRESUP'
			// FAB - 0002566 - 22/09/2015 >>>>>>>>>>
			//ids_show20.of_Retrieve (ls_emp,ls_taller)
			of_retrieve (ls_emp, ls_taller, ids_show20)
			// FAB - 0002566 - 22/09/2015 <<<<<<<<<<
		case 'OT'
			// FAB - 0002566 - 22/09/2015 >>>>>>>>>>
			//ids_show30.of_Retrieve (ls_emp,ls_taller)
			of_retrieve (ls_emp, ls_taller, ids_show30)
			// FAB - 0002566 - 22/09/2015 <<<<<<<<<<
		case 'OTDET'
			// FAB - 0002566 - 22/09/2015 >>>>>>>>>>
			//ids_s30det.of_Retrieve (ls_emp,ls_taller,datetime(gnv_app.inv_today.of_get_today()))
			of_retrieve (ls_emp, ls_taller, ids_s30det, {datetime(gnv_app.inv_today.of_get_today())})
			// FAB - 0002566 - 22/09/2015 <<<<<<<<<<
		case 'CITADET' // FAB - 5/12/2007 20661053029
			// FAB - 0002566 - 22/09/2015 >>>>>>>>>>
			//ids_s10det.of_Retrieve (ls_emp,ls_taller,datetime(gnv_app.inv_today.of_get_today()))
			of_retrieve (ls_emp, ls_taller, ids_s10det, {datetime(gnv_app.inv_today.of_get_today())})
			// FAB - 0002566 - 22/09/2015 <<<<<<<<<<
	end choose
	sqlca.of_commit()
end if

if ib_haygroupby then
	choose case is_key
		case 'CITA'
			if ids_show10.RowCount() > 0 then ids_show10.of_RowsCopy (1,ids_show10.RowCount(),Primary!,dw_show10,1,Primary!)
		case 'PRESUP'
			if ids_show20.RowCount() > 0 then ids_show20.of_RowsCopy (1,ids_show20.RowCount(),Primary!,dw_show20,1,Primary!)
		case 'OT'
			if ids_show30.RowCount() > 0 then ids_show30.of_RowsCopy (1,ids_show30.RowCount(),Primary!,dw_show30,1,Primary!)
		case 'OTDET'
			if ids_s30det.RowCount() > 0 then ids_s30det.of_RowsCopy (1,ids_s30det.RowCount(),Primary!,dw_s30det,1,Primary!)
		case 'CITADET' // FAB - 5/12/2007 20661053029
			if ids_s10det.RowCount() > 0 then ids_s10det.of_RowsCopy (1,ids_s10det.RowCount(),Primary!,dw_s10det,1,Primary!) // FAB - 5/12/2007 20661053029
	end choose
	if is_groupbyvalue > '' then
		of_set_groupby (is_groupbyvalue)
	end if
	if is_key = 'OTDET' and dw_s30det.RowCount() > 0 then
		dw_s30det.object.intervencion_comp.primary = dw_s30det.object.intervencion_descrip_sincrlf.primary
	end if
	if is_key = 'CITADET' and dw_s10det.RowCount() > 0 then // FAB - 5/12/2007 20661053029
		dw_s10det.object.intervencion_comp.primary = dw_s10det.object.intervencion_descrip_sincrlf.primary
	end if
else
	if isvalid(ids_show10) then ids_show10.of_ShareData(dw_show10)
	if isvalid(ids_show20) then ids_show20.of_ShareData(dw_show20)
	if isvalid(ids_show30) then ids_show30.of_ShareData(dw_show30)
end if

of_filter()

if ib_haygroupby then
	choose case is_key
		case 'CITA'
			if dw_show10.RowCount() > 0 then
				dw_show10.Sort()
				dw_show10.GroupCalc()
			end if
		case 'PRESUP'
			if dw_show20.RowCount() > 0 then
				dw_show20.Sort()
				dw_show20.GroupCalc()
			end if
		case 'OT'
			if dw_show30.RowCount() > 0 then
				dw_show30.Sort()
				dw_show30.GroupCalc()
			end if
		case 'OTDET'
			if dw_s30det.RowCount() > 0 then
				dw_s30det.Sort()
				dw_s30det.GroupCalc()
			end if
		case 'CITADET' // FAB - 5/12/2007 20661053029
			if dw_s10det.RowCount() > 0 then	// FAB - 5/12/2007 20661053029
				dw_s10det.Sort()
				dw_s10det.GroupCalc()
			end if
	end choose
//	of_resize()
end if

of_adjust_width()

for ll_row = 1 to dw_show30.RowCount()
	of_set_avisotooltip (ll_row)
next

// Ferran - 26371540578 - 26/06/2009
for ll_row = 1 to dw_show10.RowCount()
	of_set_avisotooltipcita (ll_row)
next
for ll_row = 1 to dw_s10det.RowCount()
	of_set_avisotooltipcita (ll_row)
next
//

if not ib_haygroupby then
	if ib_filtrar then 
		of_filtrar_recepcionista (true, gnv_app.inv_usuario.is_uid)
	end if
end if

ib_firsttimes30det = true

if dw_s30det.RowCount() > 0 then
	of_calc_tooltipposition (dw_s30det,dw_s30det.RowCount())
end if

ib_firsttimes30det = false

// FAB - 5/12/2007 20661053029
ib_firsttimes10det = true
if dw_s10det.RowCount() > 0 then
	of_calc_tooltipposition (dw_s10det,dw_s10det.RowCount())
end if

ib_firsttimes10det = false
////////

ib_retrieving = false

this.SetRedraw(true)

choose case is_key
	case 'CITA'
		dw_show10.SetRedraw(true)
	case 'PRESUP'
		dw_show20.SetRedraw(true)
	case 'OT'
		dw_show30.SetRedraw(true)
	case 'OTDET'
		dw_s30det.SetRedraw(true)
	case 'CITADET'
		dw_s10det.SetRedraw(true)	// FAB - 5/12/2007 20661053029
end choose

of_adjust_width()

end subroutine

public subroutine of_edit (long al_row);n_cst_manto_param		lnv_manto_param

n_ds		lds_target

Long		ll_count
Long		ll_row
Long		ll_rowint
Long		ll_first
Long		ll_numinterno
Long		ll_rows[]
Long		ll_null[]

String	ls_columns[]
String	ls_columns2[]

Boolean	lb_cambiado
Boolean	lb_ignoremousemove

pointer old_pointer 
inv_manager.of_set_bussy (true)
of_calendar_popup_stop()
idw_show.ib_dragflag = false
Drag (Cancel!)

inv_manager.of_clicked (0,'',0)

ii_lasttooltip = 0	// Para forzar que se oculten los tooltips!
of_hide_dwdatoscli()

st_tooltip.visible = false

lb_ignoremousemove   = ib_ignoremousemove
ib_ignoremousemove   = true
dw_datossms.visible  = false
dw_datosmail.visible = false	//JMR:19.7.2013 40801435244

this.SetRedraw(true)

if al_row > 0 then
	ll_first = long (idw_show.Describe ("DataWindow.FirstRowOnPage"))
	inv_manager.of_set_notestimer (false)
	inv_timer.Stop()
	idw_show.SetRow (al_row)	
	
	old_pointer     = setpointer (hourglass!)
	ll_numinterno   = idw_show.GetItemNumber (al_Row,'numinterno')
	lnv_manto_param = create n_cst_manto_param
	lnv_manto_param.ii_action = lnv_manto_param.ACT_EDIT
	
	// =====
	// Ref.: 38411357550 - jdm - 05/11/2012
	if ( ib_fromHierarchicalPanel ) then
		lnv_manto_param.ii_action = lnv_manto_param.ACT_READ
	end if
	// =====

	lnv_manto_param.ia_param[1] = idw_show.GetItemString (al_Row,'emp')
	lnv_manto_param.ia_param[2] = ll_numinterno
	inv_manager.of_set_notestimer(FALSE)
	
	// #38281200049#
	sqlca.of_verifytrans_outside('u_calendar_ot.of_edit.pre_openwindow')	
	OpenWithParm (w_manto_ttot, lnv_manto_param)
	// #38281200049#
	sqlca.of_verifytrans_outside('u_calendar_ot.of_edit.pre_postopenwindow')
	
	
	
	Parent.Dynamic SetRedraw (true)
	if isvalid(lnv_manto_param) then
	else
		inv_manager.of_set_bussy (false)
		ib_ignoremousemove = lb_ignoremousemove
		return
	end if

	// Ferran - 0000686 - 21/08/14
	if upperbound(lnv_manto_param.ia_param) >= 9 then
		if lnv_manto_param.ia_param[9] = 1 then
			inv_manager.of_set_refreshcita(true)
			inv_manager.of_refresh_cita()
		end if
	end if
	//...
	
	if lnv_manto_param.ii_result = lnv_manto_param.RES_SUCCESS then
		of_mouse_capture()
		SetPointer(HourGlass!)
		if is_key = 'CITA' then
//			inv_manager.dynamic of_set_refreshcita(true)
			inv_manager.of_set_refreshcita(true)
			inv_manager.of_refresh_cita()
			of_set_avisotooltipcita (al_row)	// Ferran - 26371540578 - 26/06/2009
//			inv_manager.Post of_refresh_cita()
			al_row = idw_show.of_find ('numinterno = ' + string(ll_numinterno))
			if al_row > 0 then
				idw_show.ScrollToRow(al_row)
			end if
		elseif is_key = 'CITADET' then
			idw_show.setRedraw (false)
			if of_reselect (lds_target, ll_numinterno) = SUCCESS then
				ll_count = dw_s10det.of_get_findrow('numinterno = ' + string(ll_numinterno), ll_rows)
				if ids_aux_s10det.RowCount() = ll_count then
					gf_lista_objetos(dw_s10det,ls_columns,'column','*','*')
					for ll_count = 1 to upperbound(ls_columns)
						if ls_columns[ll_count] = 'alturarow'         then continue
						if ls_columns[ll_count] = 'groupby'           then continue
						if ls_columns[ll_count] = 'intervencion_comp' then continue
						if isnumber(dw_s10det.describe(ls_columns[ll_count] + '.id')) then
							ls_columns2[upperbound(ls_columns2) + 1] = ls_columns[ll_count]
						end if
					next
					ll_count = upperbound(ll_rows)
					for ll_row = 1 to ll_count
						ll_rowint = ids_aux_s10det.of_find('ttotintervencion_intervencion = ' + string(dw_s10det.GetItemNumber(ll_rows[ll_row],'ttotintervencion_intervencion')))
						if ll_rowint > 0 then
						else
							of_changevista()
							ll_rows = ll_null
							exit
						end if
						inv_manager.of_columnscopy (ids_aux_s10det,ll_rowint,dw_s10det,ll_rows[ll_row],ls_columns2)
						of_set_avisotooltip(ll_rows[ll_row])
					next
				else
					of_changeVista()
				end if
			else
				// Presupuesto/OT cerrado o anulado, ya no está en la vista actual
				if isvalid(iuo_panel) then
					iuo_panel.of_refresh()
				elseif isvalid(iuo_panel_cortesia) then
					iuo_panel_cortesia.of_retrieve()
				end if
			end if
			idw_show.SetRedraw (true)
			if upperbound(ll_rows) > 0 then
				dw_s10det.object.intervencion_comp.primary = dw_s10det.object.intervencion_descrip_sincrlf.primary
				dw_s10det.GroupCalc()
				al_row = idw_show.of_find ('numinterno = ' + string(ll_numinterno))
				if al_row > 0 then
					idw_show.ScrollToRow(al_row)
				end if
			end if
		else
			idw_show.SetRedraw (false)
			if of_reselect (lds_target, ll_numinterno) = SUCCESS then
				choose case is_key
					case 'OT'
						inv_manager.of_columnscopy (lds_target,1,idw_show,al_row)
						of_set_avisotooltip (al_row)
						of_set_groupby(is_groupbyvalue, al_row)
					case 'OTDET'
						// 17852215092 - JMR - 6/03/2007. Evitamos releer el panel completo si no se ha cambiado
						// el número de intervenciones, y si continúan existiendo las mismas intervenciones
						ll_count = dw_s30det.of_get_findrow('numinterno = ' + string(ll_numinterno), ll_rows)
						if ids_aux_s30det.RowCount() = ll_count then
							gf_lista_objetos(dw_s30det,ls_columns,'column','*','*')
							for ll_count = 1 to upperbound(ls_columns)
								if ls_columns[ll_count] = 'alturarow'         then continue
								if ls_columns[ll_count] = 'groupby'           then continue
								if ls_columns[ll_count] = 'intervencion_comp' then continue
								if isnumber(dw_s30det.describe(ls_columns[ll_count] + '.id')) then
									ls_columns2[upperbound(ls_columns2) + 1] = ls_columns[ll_count]
								end if
							next
							ll_count = upperbound(ll_rows)
							for ll_row = 1 to ll_count
								ll_rowint = ids_aux_s30det.of_find('ttotintervencion_intervencion = ' + string(dw_s30det.GetItemNumber(ll_rows[ll_row],'ttotintervencion_intervencion')))
								if ll_rowint > 0 then
								else
									of_changevista()
									ll_rows = ll_null
									exit
								end if
								inv_manager.of_columnscopy (ids_aux_s30det,ll_rowint,dw_s30det,ll_rows[ll_row],ls_columns2)
								of_set_avisotooltip(ll_rows[ll_row])
							next
						else
							of_changeVista()
						end if
				end choose
				if upperbound(ll_rows) > 0 then
				else
					al_row = idw_show.of_find ('numinterno = ' + string(ll_numinterno))
					if al_row > 0 then
						idw_show.ScrollToRow(al_row)
					end if
				end if
			else
				// Presupuesto/OT cerrado o anulado, ya no está en la vista actual
				if isvalid(iuo_panel) then
					iuo_panel.of_refresh()
				elseif isvalid(iuo_panel_cortesia) then
					iuo_panel_cortesia.of_retrieve()
				end if
			end if
			
			idw_show.SetRedraw (true)
			if upperbound(ll_rows) > 0 then
				dw_s30det.object.intervencion_comp.primary = dw_s30det.object.intervencion_descrip_sincrlf.primary
				dw_s30det.GroupCalc()
				al_row = idw_show.of_find ('numinterno = ' + string(ll_numinterno))
				if al_row > 0 then
					idw_show.ScrollToRow(al_row)
				end if
			end if
		end if
	end if
	destroy (lnv_manto_param)
	of_mouse_release()
	setpointer (Arrow!)
	SetFocus()
	if ib_haygroupby = false then
		inv_manager.of_set_notestimer (true)
	end if
end if

inv_manager.of_Garbage ()

idw_show.ib_dragflag = false
inv_manager.of_set_bussy (false)
if gnv_app.ib_closing then
else
	if isvalid (iuo_panel) then
		iuo_panel.of_broadcast_pending ()
	end if
end if

ib_ignoremousemove = lb_ignoremousemove

return

end subroutine

public subroutine of_show_dragtarget (datawindow adw_target, boolean ab_switch);Boolean lb_scroll
String ls_create
Long   ll_posw
Long   ll_posh
Long	 ll_x

if isvalid (adw_target) then
else
	return
end if

adw_target.Modify ('destroy r_target')
adw_target.Modify ('destroy l_dragsource_top')
adw_target.Modify ('destroy l_dragsource_left')
adw_target.Modify ('destroy l_dragsource_right')
adw_target.Modify ('destroy l_dragsource_bottom')


if (ab_switch) then
	ll_x      = 1 + il_scrollpos
	ll_posw   = adw_target.Width
	ll_posh   = adw_target.height
	ll_posw   = UnitsToPixels (ll_posw,XUnitsToPixels!)
	ll_posh   = UnitsToPixels (ll_posh,YUnitsToPixels!)	
	if long (adw_target.Describe ("DataWindow.FirstRowOnPage")) > 1 then
		lb_scroll = true		
	end if
	if long (adw_target.Describe ("DataWindow.LastRowOnPage")) < adw_target.RowCount() then
		lb_scroll = true		
	end if
	if lb_scroll then
		ll_posw   = ll_posw - 16
	end if
	ll_posw   = ll_posw - 1
	ll_posh   = ll_posh - 1
	
	ls_create = 'create rectangle ('
	ls_create = ls_create + ' band=foreground'
	ls_create = ls_create + ' name=r_target'
	ls_create = ls_create + ' x="' + string(ll_x) + '"'
	ls_create = ls_create + ' y="1"'
	ls_create = ls_create + ' width="'  + string (ll_posw)          + '"'
	ls_create = ls_create + ' height="' + string (ll_posh)          + '"'
	ls_create = ls_create + ' pen.color="' + string (gf_get_color('RECTANGULO_SELECTOR'))     + '"'
	ls_create = ls_create + ' pen.style="' + string (0)+ '"'
	ls_create = ls_create + ' pen.width="2"'
	ls_create = ls_create + ' background.mode="1"'	
	ls_create = ls_create + ' background.color="' + string (gf_Get_color ('TRANS'))    + '"'
	ls_create = ls_create + ' Brush.Hatch="7"'
	adw_target.Modify (ls_create)
end if

adw_target.SetRedraw(true)

end subroutine

public subroutine of_show_dragsource (datawindow adw_source, long al_row, boolean ab_switch);Boolean 	lb_scroll
String 	ls_create
String 	ls_evaluate
String 	ls_describe
String 	ls_visible
Long   	ll_posw
Long   	ll_posh
Long   	ll_posX
Long   	ll_PosY
Long   	ll_back
Long   	ll_first
Long   	ll_last
Long   	ll_firstpage
Long   	ll_lastpage
Long	 	ll_totalheight

Long		ll_visgroup
Long		ll_NumInterno
Long		ll_NumInterno2
Long		ll_primero
Long		ll_nrorows
Long		ll_rows
Long		ll_find
Long 		ll_cap
Long		ll_heightOT

String	ls_find

if isvalid (adw_source) then
else
	return
end if

adw_source.Modify ('destroy r_source')

if (ab_switch) then
	ll_posw   = adw_source.Width
	ll_posh   = adw_source.height
	ll_posw   = UnitsToPixels (ll_posw,XUnitsToPixels!)
	ll_first  = long (adw_source.Describe ("DataWindow.FirstRowOnPage"))
	ll_last   = long (adw_source.Describe ("DataWindow.LastRowOnPage"))
	ll_PosX   = 1
	ll_PosY   = 1
	
	if al_Row > 0 then
		ll_visgroup  = adw_source.GetItemNumber(al_row,'primero') 
		ls_evaluate  = "'RowHeight()'," + string(al_row)
		ls_Describe  = 'Evaluate(' +  ls_evaluate + ')'
		ll_posh      = long(adw_source.Describe (ls_describe))
		ll_posY      = long(adw_source.Describe ("DataWindow.Header.Height"))
		if ib_haygroupby then
			ls_evaluate  = "'Page()'," + string(ll_first)
			ls_Describe  = 'Evaluate(' +  ls_evaluate + ')'
			ll_firstpage = long(adw_source.Describe (ls_describe))
			ls_evaluate  = "'Page()'," + string(al_row)
			ls_Describe  = 'Evaluate(' +  ls_evaluate + ')'
			ll_lastpage  = long(adw_source.Describe (ls_describe))
		end if
		for ll_back = ll_first to (al_row - 1)
			ls_evaluate = "'RowHeight()'," + string(ll_back)
			ls_Describe = 'Evaluate(' +  ls_evaluate + ')'
			ll_posy     = ll_posY + long(adw_source.Describe (ls_describe))
		next
		if ll_firstpage = ll_lastpage then
		else
			// El GroupBy produce zonas vacías entre el último registro de una página
			// y el primero de la siguiente. Esto produce un desfase en el valor de ll_posY,
			// es decir, de la posición vertical en la que hacemos aparecer el rectángulo
			// r_source. Aquí corregimos ese desfase calculando la altura total de los
			// registros de la página correspondiente a la primera fila actual en el datawindow
			// y restando esa altura de la del datawindow en sí mismo.
			for ll_back = (al_row - 1) to 1 step -1
				ls_evaluate    = "'Page()'," + string(ll_back)
				ls_Describe    = 'Evaluate(' +  ls_evaluate + ')'
				if long(adw_source.Describe (ls_describe)) = ll_lastpage  then continue
				if long(adw_source.Describe (ls_describe)) < ll_firstpage then exit
				ls_evaluate    = "'RowHeight()'," + string(ll_back)
				ls_Describe    = 'Evaluate(' +  ls_evaluate + ')'
				ll_totalheight = ll_totalheight + long(adw_source.Describe (ls_describe))
			next
			ll_totalheight = UnitsToPixels (adw_source.height,YUnitsToPixels!) - long(adw_source.Describe ("DataWindow.Header.Height")) - ll_totalheight
			ll_totalheight = ll_totalheight - 16 // altura del scroll horizontal !!!
			ll_posy = ll_posy + ll_totalheight - 1
		end if
	else
		ll_posh    = long(adw_source.Describe ("DataWindow.Detail.Height"))
	end if
	
	if ll_first > 1 then
		lb_scroll = true		
	end if
	if ll_last < adw_source.RowCount() then
		lb_scroll = true		
	end if
	if lb_scroll then
		ll_posw   = ll_posw - 16
	end if
	ll_posw   = ll_posw - 1
	
	If ll_visgroup = 0 Then
	Else
		If ll_visgroup = 2 Then //PICAR EN CABECERA1
			ll_posY = ll_posY + ll_posh / ll_visgroup
			ll_posh = ll_posh / ll_visgroup
		Else
			If al_row > 0 Then
				ll_NumInterno = adw_source.GetItemNumber(al_row,'numinterno')
				ls_find = 'NumInterno=' + String(ll_NumInterno)
				ll_find = adw_source.find(ls_find, 1, adw_source.rowcount())
				If ll_find > 0 Then
					If ll_first > ll_find Then 
						ll_find = ll_first 						
						ll_heightOT = 0
					Else
						ll_heightOT = 16
					End If					
					
					If adw_source.GetItemNumber(ll_find,'primero') = 3 And ll_find = al_row Then 
						ll_cap = long(adw_source.Describe ('groupby_comp.height'))
						ll_posh = ll_posh - ll_cap - ll_heightOT
						ll_posy = ll_posy + ll_cap
					Else
						If adw_source.GetItemNumber(ll_find,'primero') = 4 And ll_find = al_row Then  
							ll_posh = ll_posh - ll_heightOT
						Else
							If adw_source.GetItemNumber(al_row,'primero') = 4 And ll_find = ll_first Then
								ll_posh = ll_posh - 16
							End If		
						End If
					End If					
					
					for ll_back = ll_find to ll_last
						ll_NumInterno2 = adw_source.GetItemNumber(ll_back,'numinterno')
						ll_primero 		= adw_source.GetItemNumber(ll_back,'primero')
						If ll_NumInterno 	= ll_NumInterno2 Then
							If ll_back = al_row  Then continue							
							ll_nrorows = ll_nrorows + 1
						Else
							Exit
						End If
					next					
				End If				
				
				If ll_first > al_row  Then
					ll_posy    = long(adw_source.Describe ("DataWindow.Header.Height")) 
					ls_visible = 	"1~tif("+ String(ll_back) + " >~ " + String(ll_first) + ",1,0)"
					ll_nrorows = ll_nrorows - 1
				Else
					If ll_last < al_row Then
						ll_posy = ll_posy - ll_posh * (al_row - ll_find ) - ll_heightOT
						ls_visible = 	"1~tif("+ String(ll_find) + " >~ " + String(ll_last) + ",0,1)"
						ll_nrorows = ll_nrorows - 1
					Else
						If (al_row - ll_find) > 0 Then ll_posy = ll_posy - ll_posh * (al_row - ll_find) - ll_heightOT
					End If
				End If
				
				ll_posh = ll_posh + ll_posh * (ll_nrorows) + ll_heightOT
			End If
		End If				
	End If

	//ll_posh = ll_posh - 1	
	
	ls_create = 'create rectangle ('
	ls_create = ls_create + ' band=foreground'
	ls_create = ls_create + ' name=r_source'
	ls_create = ls_create + ' x="' + string(ll_posX) + '"'
	ls_create = ls_create + ' y="' + string(ll_posY) + '"'	
	ls_create = ls_create + ' height="' + string (ll_posh)        + '"'
	ls_create = ls_create + ' width="'  + string (ll_posw)          	 + '"'	
	ls_create = ls_create + ' pen.color="' + string (gf_get_color('RECTANGULO_SELECTOR'))     + '"'
	ls_create = ls_create + ' pen.style="' + string (0)+ '"'
	ls_create = ls_create + ' pen.width="2"'
	ls_create = ls_create + ' background.mode="1"'	
	ls_create = ls_create + ' background.color="' + string (gf_Get_color ('TRANS'))    + '"'
	ls_create = ls_create + ' Brush.Hatch="7"'

	adw_source.Modify (ls_create)
	adw_source.SetRedraw(true)
end if

end subroutine

public subroutine of_flashrow (datawindow adw_flash, long al_row);if isvalid(iuo_panel) = false then return

if gnv_app.inv_menumanager.iuo_panel_activo = iuo_panel then
else
	return
end if

of_show_dragsource(adw_flash, al_row,true)
yield()
of_sleep (300)
of_show_dragsource(adw_flash, al_row,false)
yield()
of_sleep (300)
of_show_dragsource(adw_flash, al_row,true)
yield()
of_sleep (300)
of_show_dragsource(adw_flash, al_row,false)
yield()
end subroutine

public subroutine of_change_emp ();uo_robef.visible = False

if gnv_app.inv_empwrkmanager.il_pais = 121 then
	If IsValid(inv_robef) Then
	Else
		gnv_app.inv_nvocache.of_register ('n_cst_tmrobef', inv_robef)
	End If
	If inv_robef.of_check_available() = SUCCESS Then
		if not ib_robef_init then
			ib_robef_init = true
			of_init_hoverbutton (uo_robef, 'toolbar24_robef.bmp','','LISTADOROBEF')			// LMC - 25821051021 - 10/06/2009
		end if
		uo_robef.visible = True
	End If
end if

of_retrieve()

end subroutine

public subroutine of_cargacita ();// Ferran - 30251748085 - 16/07/10
// n_cst_calendarmanager	lnv_manager 
n_cst_manto_calendar	lnv_manager
//...

BOOLEAN	lb_readOnly		// Ref.: 38411357550 - jdm - 05/11/2012

Pointer Old_Pointer

n_cst_manto_param	lnv_param

of_hide_dwdatoscli (true)

inv_manager.of_set_bussy (true)
Old_Pointer = SetPointer (HourGlass!)

lnv_param = create n_cst_manto_param
lnv_param.ii_action = lnv_param.ACT_EDIT

// =====
// Ref.: 38411357550 - jdm - 05/11/2012
if ( ib_fromHierarchicalPanel ) then
	lnv_param.ii_action = lnv_param.ACT_READ
end if
// =====

lnv_manager = inv_manager

lnv_manager.dynamic of_init_carga()  // Ferran - 30251748085 - 16/07/10

lnv_param.ia_param[1]  = gnv_app.inv_empwrkmanager.is_empwrk
lnv_param.ia_param[2]  = gnv_app.inv_empwrkmanager.is_talwrk
lnv_param.inv_param[1] = inv_manager.inv_Carga
lnv_param.inv_param[2] = inv_manager.inv_calendario

inv_manager.of_set_notestimer(FALSE)
OpenWithParm (w_taller_cargacita, lnv_param)

destroy (lnv_param)
SetPointer (Old_Pointer)

if inv_manager.inv_carga.ib_agendasyncro then
	inv_manager.inv_carga.ib_agendasyncro = false
	inv_manager.Post of_refresh_cita()
end if
inv_manager.of_set_notestimer(TRUE)
inv_manager.of_set_bussy (false)
end subroutine

public subroutine of_refresh_cita (long al_tarea);of_refresh_cita (al_tarea, 0)

return
end subroutine

public subroutine of_edit_status (long al_row);n_cst_manto_param		lnv_manto_param

n_ds		lds_target

pointer old_pointer 
String  ls_emp
Long    ll_numinterno
Long    ll_first


of_calendar_popup_stop()
idw_show.ib_dragflag = false
Drag (Cancel!)

inv_manager.of_clicked (0,'',0)

if al_row > 0 then
	ll_first = long (idw_show.Describe ("DataWindow.FirstRowOnPage"))
	
	inv_manager.of_set_notestimer (false)
	inv_timer.Stop()
	idw_show.SetRow (al_row)	
	
	old_pointer = setpointer (hourglass!)
	
	lnv_manto_param = create n_cst_manto_param
	lnv_manto_param.ii_action = lnv_manto_param.ACT_EDIT
	
	ls_emp        = idw_show.GetItemString   (al_Row,'emp')
	ll_numinterno = idw_show.GetItemNumber   (al_Row,'numinterno')
	
	ids_ttotcab.of_Retrieve (ls_emp,ll_numinterno)
	
	
	lnv_manto_param.ia_param[1]  = ls_emp
	lnv_manto_param.ia_param[2]  = ll_numinterno
	lnv_manto_param.ia_param[3]  = OT_SOURCE		// IPS: 16.05.2006 - 13911608044 - Parada Intervencion
	lnv_manto_param.ids_share[1] = ids_ttotcab
	lnv_manto_param.inv_param[1] = inv_manager	// IPS: 06.07.2006 - SMS
	inv_manager.of_set_notestimer(FALSE)
	
	// Ferran - 26371540578 - 26/06/2009
	if idw_show.GetItemNumber(al_Row,'status') = 10 then
		lnv_manto_param.ia_param[4]  = ''
		lnv_manto_param.ia_param[5]  = 'CITA'
	end if	
	//
	
	// #38281200049#
	sqlca.of_verifytrans_outside('u_calendar_ot.of_edit_status.1')		
	OpenWithParm (w_manto_ttot_status, lnv_manto_param)
	// #38281200049#
	sqlca.of_verifytrans_outside('u_calendar_ot.of_edit_status.2')
	
	if lnv_manto_param.ii_result = lnv_manto_param.RES_SUCCESS then		
		idw_show.SetRedraw (false)
		of_reselect (lds_target, idw_show.GetItemNumber (al_Row,'numinterno'))
		inv_manager.of_columnscopy (lds_target,1,idw_show,al_row)
		if idw_show.GetItemNumber(al_Row,'status') = 10 then
			of_set_avisotooltipcita(al_row)	// Ferran - 26371540578 - 26/06/2009
		else	
			of_set_avisotooltip(al_row)
		end if
		of_set_groupby(is_groupbyvalue, al_row)
		al_row = idw_show.find ('numinterno = ' + string(ll_numinterno),1,idw_show.RowCount())
		if al_row > 0 then
			idw_show.SCrollToRow(al_row)
		end if
		idw_show.SetRedraw (true)
	end if
	destroy (lnv_manto_param)	
	setpointer (old_pointer)
	SetFocus()
	idw_show.SetFocus ()
	inv_manager.of_set_notestimer (true)
end if

idw_show.ib_dragflag = false

return

end subroutine

public subroutine of_set_avisotooltip (long al_row);u_dw	 ldw

Integer	li_estado_ot
Integer	li_estado_int
Integer	li_count

Long		ll_PiezasNoServidas  
Long		ll_StatusAviso
Long		ll_find

String	ls_tooltip
String	ls_StatusEnCurso
String	ls_StatusDescrip

il_last_row_mousemove = 0

if al_row > 0 then
else
	return
end if

choose case is_key
	case 'OT'   ; ldw = dw_show30
	case 'OTDET'; ldw = dw_s30det
	case else   ; return
end choose

if al_row > ldw.Rowcount() then
   return
end if

//if al_row = 1 then il_prev_numinterno = -1

////////////////////////////////////////////////////////////////////////////////////////////////
// JMR: 14.2.2007 - Estado de la OT para panel de OT+Intervención

if is_key = 'OTDET' then
	if upperbound(is_estado_det) > 0 then
	else
		for li_count = 1 to 6
			is_estado_det[li_count] = of_get_classtext ('LITERAL','PANEL_OTDETALLE','ESTADO' + string(li_count))
		next
	end if

	if     dw_s30det.GetItemNumber(al_row,'anulada') > 0 then
		li_estado_ot = 5
	elseif dw_s30det.GetItemNumber(al_row,'cerrada') > 0 then
		li_estado_ot = 6
	else
		if isnull(dw_s30det.GetItemDateTime(al_row,'llegadavehfecha')) then
			li_estado_ot = 1
		else
			li_estado_ot = 2
		end if
		
		if dw_s30det.GetItemNumber(al_row,'ttotintervencion_hayfactura') > 0 then
			li_estado_int = 4
		else
			if dw_s30det.GetItemNumber(al_row,'intervenesperapiezas') > 0 then
				li_estado_int = 3
			else
				if dw_s30det.GetItemNumber(al_row,'tienelineas') > 0 then
					li_estado_int = 3
				end if
				if dw_s30det.GetItemDecimal(al_row,'ttotintervencion_estado') = 20 then
					li_estado_int = 4
				end if
			end if
		end if
	end if

	if li_estado_ot > 0 then
		dw_s30det.SetItem (al_row, 'estado_ot', is_estado_det[li_estado_ot])
	end if

	if li_estado_int > 0 then
		dw_s30det.SetItem (al_row, 'estado_det', is_estado_det[li_estado_int])
	end if
end if

////////////////////////////////////////////////////////////////////////////////////////////////

//il_prev_numinterno      = ldw.GetItemNumber (al_row,'numinterno')

ll_PiezasNoServidas = ldw.GetItemNumber (al_row,'PiezasNoServidas')
ls_StatusEnCurso    = ldw.GetItemString (al_row,'StatusEnCurso')	
if ls_StatusEnCurso > '' then
	ll_find = ids_otstatus.of_find ('codigo="' + ls_StatusEnCurso  + '"')
	if ll_find > 0 then
		ll_StatusAviso   = ids_otstatus.GetItemNumber (ll_find,'aviso')
		ls_StatusDescrip = ids_otstatus.GetItemString (ll_find,'descrip')
	end if
end if

//if ll_StatusAviso = 1 then	// Ferran - 13911608044 - 23/06/11
	ls_tooltip = ls_StatusDescrip
//end if

ls_tooltip = trim (ls_tooltip)
if ls_tooltip > '' then
	ls_tooltip = ls_tooltip + '. '
else
	ls_tooltip = ''
end if

if ll_PiezasNoServidas = 1 then
else
	if idw_show.GetItemNumber (al_row, 'TieneInterrumpido') > 0 then
		ll_PiezasNoServidas = 1
	end if
end if

if ll_PiezasNoServidas = 1 then
	ls_tooltip = ls_tooltip + is_tooltip_PiezasNoServidas + '. '
end if

ls_tooltip = trim (ls_tooltip)

ldw.SetItem (al_row,'tooltip',ls_tooltip)

return

end subroutine

public subroutine of_reselectrow (ref u_dw adw_target, long al_row);Long ll_first

ll_first = long (adw_target.Describe ("DataWindow.FirstRowOnPage"))
adw_target.SetRedraw (false)

il_last_row_mousemove = 0
adw_target.of_Reselectrow(al_row)		

choose case adw_target
	case dw_show30, dw_s30det
		of_set_avisotooltip (al_row)
end choose

of_filter()	
if al_row <= adw_target.RowCount() then
	adw_target.ScrollToRow (al_row)
end if

sqlca.of_commit()
if ll_first > 0 and ll_first <= adw_target.RowCount() then
	adw_target.ScrollToRow (ll_first)
end if
if al_row > 0 and al_row <= adw_target.RowCount() then
	adw_target.ScrollToRow (al_row)
end if

adw_target.SetRedraw (true)

end subroutine

public subroutine of_filtrar_recepcionista (boolean ab_filtrar, string as_recepcionista);String ls_filter, ls_filter2

If ab_filtrar then
	as_recepcionista = upper(as_recepcionista)
	uo_other.is_bitmap_normal = gnv_app.inv_screen.of_getrecurso('..\recursos\bmp\toolbar24_multiuser.bmp')
	uo_other.is_tooltip       = of_get_classtext('LITERAL','TOOLTIP','DOCINT1') 
	ls_filter = "upper(Recepcionista) = '" + upper(as_recepcionista) + "'"
	if ib_haygroupby then
		dw_show10.of_filter (ls_filter)
		dw_s10det.of_filter (ls_filter)
	end if
	dw_show20.of_filter (is_filter_presupuesto + ' and ' + ls_filter)
	ls_filter2 = is_filter_ot + ' and  ' + ls_filter
	dw_show30.of_filter (ls_filter2)
	dw_s30det.of_filter (ls_filter2)
else
	uo_other.is_bitmap_normal = gnv_app.inv_screen.of_getrecurso('..\recursos\bmp\toolbar24_contacto.bmp')
	uo_other.is_tooltip       = of_get_classtext('LITERAL','TOOLTIP','DOCINT2')
	if ib_haygroupby then
		dw_show10.of_filter ('')
		dw_s10det.of_filter ('')
	end if
	dw_show20.of_filter (is_filter_presupuesto)
	ls_filter2 = is_filter_ot
	dw_show30.of_filter (is_filter_ot)
	dw_s30det.of_filter (is_filter_ot)
end if

ib_filtrar = ab_filtrar
uo_other.is_bitmap_hover    = uo_other.is_bitmap_normal
uo_other.is_bitmap_disabled = uo_other.is_bitmap_normal
uo_other.p_1.PictureName	 = uo_other.is_bitmap_normal

uo_other.of_init()
uo_other.Inv_ToolTip.RelayMsg(This)

if ib_haygroupby then
	of_set_groupby(is_groupbyvalue)
end if

return
end subroutine

public subroutine of_filter_recepcionista ();inv_manager.of_set_bussy (true)
Parent.dynamic of_filter_recepcionista()
inv_manager.of_set_bussy (false)
end subroutine

public function integer of_open_keyrnotratados ();String ls_chasis

n_cst_manto_param		lnv_param

of_init_keyreader ()		// FAB - 27141716498 - 08/09/2009 

inv_manager.of_set_bussy (true)
lnv_param = create n_cst_manto_param
lnv_param.inv_param[1] = inv_keyreader
lnv_param.is_tag		  = is_keyreader_tagmarcaaso
lnv_param.ii_result 	  = 0

// #38281200049#
sqlca.of_verifytrans_outside('u_calendar_ot.of_open_keyrnotratados.1')
OpenWithParm(w_search_ttkeyreader,lnv_param)
// #38281200049#
sqlca.of_verifytrans_outside('u_calendar_ot.of_open_keyrnotratados.2')


if upperbound(lnv_param.ia_param) >= 2 then
	if lnv_param.ia_param[1] = 1 then
		ls_chasis = lnv_param.ia_param[2]
		
		of_new_keyreader( ls_chasis )
	end if
end if

 
if isValid(lnv_param) then destroy lnv_param
inv_manager.of_set_bussy (false)
return SUCCESS



end function

public subroutine of_set_keyreader ();Boolean lb_visible 

if (this.ib_pinned) then
	lb_visible = ib_keyreader_activo 
else
	lb_visible = false
end if

// =====
// Ref.: 38411357550 - jdm - 05/11/2012
if ( lb_visible ) then
	if ( ib_fromHierarchicalPanel ) then
		lb_visible = FALSE
	end if
end if
// =====

if ib_keyreader_activo <> uo_keyreader.Visible then
	 uo_keyreader.Visible = lb_visible
end if

end subroutine

public subroutine of_adjust_width ();u_dw		ldw[]

Integer	li_item

Long		ll_width
Long		ll_width_mas

if ib_haygroupby then return

choose case is_key
	case 'CITA'
		ldw[1] = dw_show10
	case 'PRESUP'
		ldw[1] = dw_show20
	case 'OT'
		ldw[1] = dw_show30
end choose

for li_item = 1 to upperbound(ldw)
	of_adjust_column_width (ldw[li_item],'razonx')

	if li_item = 3 and long(ldw[li_item].Object.DataWindow.FirstRowOnPage) = 1 and long(ldw[li_item].Object.DataWindow.LastRowOnPage) = ldw[li_item].RowCount() then
		// Ref.: 21980853234 - jdm - 21/05/2008
		ll_width_mas = 9 + 16	// + 16, el ancho del icono de intervenciones terminadas
		ldw[li_item].vscrollbar = false
		ldw[li_item].inv_flatscrollbar.of_hide(ldw[li_item])
	else
		if li_item = 3 then
			// Ref.: 21980853234 - jdm - 21/05/2008
			ll_width_mas = 9 + 16	// + 16, el ancho del icono de intervenciones terminadas
		else
			ll_width_mas = 0
		end if
		ldw[li_item].vscrollbar = true
		ldw[li_item].of_show_scrollbar()
	end if
	if ll_width_mas > 0 then	// reajuste para OT abiertas a causa del bitmap del tooltip
		ll_width = long (ldw[li_item].describe('razonx.width')) + ll_width_mas
		ldw[li_item].modify('razonx.width="' + string(ll_width) + '"')
	end if
next

end subroutine

public subroutine of_new_keyreader (string as_chasis);n_ds		lds_target

Long		ll_newot_status
Long		ll_row
Long		ll_numinterno
String	ls_emp

as_chasis = trim (as_chasis)
if as_chasis > '' then
else
	return
end if

choose case is_key
	case 'CITA', 'CITADET'		
		ll_newot_status = 10	
	case 'PRESUP'	
		ll_newot_status = 20
	case 'OT','OTDET'
		ll_newot_status = 30
end choose

if gnv_app.inv_semaphore.of_semaphore_capture ('KEYREADER' + '@' + as_chasis,'*',1) = SUCCESS then
else
	of_message ('SEMAPHORE_LOCKED',{''})
	return
end if

of_init_keyreader () // FAB - 27141716498 - 08/09/2009 
ll_numinterno = inv_keyreader.of_new_keyreader(as_chasis,ll_newot_status) 

if ll_numinterno > 0 then
	if idw_show.Find('numinterno=' + String(ll_numinterno),1,idw_show.rowcount()) = 0 then
		idw_show.SetRedraw (false)
		ll_row = idw_show.InsertRow(0)	
		if ll_row > 0 then
			ls_emp = gnv_app.inv_empwrkmanager.is_empwrk
			idw_show.ScrollToRow (ll_row)
			idw_show.SetItem (ll_row,'emp'       ,ls_emp)
			idw_show.SetItem (ll_row,'numinterno',ll_numinterno)
			of_reselect (lds_target, ll_numinterno)
			if lds_target.RowCount() > 0 then
				inv_manager.of_columnscopy (lds_target,1,idw_show,ll_row)
			end if
			if ib_haygroupby then
				of_set_groupby(is_groupbyvalue, ll_row)
				of_set_orderby(is_lastsorted)
			else
				idw_show.ScrollToRow (1)
			end if
			ll_row = idw_show.Find ('numinterno=' + string (ll_numinterno),1,idw_show.RowCount())
			if ll_row > 0 then
				idw_show.ScrollToRow (ll_row)
			end if
		end if
		idw_show.SetRedraw (true)
	end if
end if

gnv_app.inv_semaphore.of_semaphore_release ('KEYREADER' + '@' + as_chasis,'*',1)

inv_manager.of_set_notestimer(TRUE)

idw_show.SetFocus()

end subroutine

public subroutine of_set_tooltip ();ii_dwID[1] = Inv_ToolTip.AddTool(dw_show10 ,"",0)
ii_dwID[2] = Inv_ToolTip.AddTool(dw_show20 ,"",0)
ii_dwID[3] = Inv_ToolTip.AddTool(dw_show30 ,"",0)
ii_dwID[4] = Inv_ToolTip.AddTool(dw_s30det ,"",0)
ii_dwID[5] = Inv_ToolTip.AddTool(dw_s10det ,"",0)	// FAB - 5/12/2007 20661053029

inv_Tooltip.SetTipText(dw_show10 ,ii_dwID[1],"")
inv_Tooltip.SetTipText(dw_show20 ,ii_dwID[2],"")
inv_Tooltip.SetTipText(dw_show30 ,ii_dwID[3],"")
inv_Tooltip.SetTipText(dw_s30det ,ii_dwID[4],"")
inv_Tooltip.SetTipText(dw_s10det ,ii_dwID[5],"")	// FAB - 5/12/2007 20661053029

Inv_ToolTip.SetTrack  (dw_show10 ,ii_dwID[1],true)
Inv_ToolTip.SetTrack  (dw_show20 ,ii_dwID[2],true)
Inv_ToolTip.SetTrack  (dw_show30 ,ii_dwID[3],true)
Inv_ToolTip.SetTrack  (dw_s30det ,ii_dwID[4],true)
Inv_ToolTip.SetTrack  (dw_s10det ,ii_dwID[5],true)	// FAB - 5/12/2007 20661053029

end subroutine

public subroutine of_set_orderby (string as_orderby);of_set_orderby (as_orderby, false)

end subroutine

public subroutine of_retrieve_tallermarca ();if ids_tallermarca.RowCount() > 0 then
	if ids_tallermarca.GetItemString (1,'emp') = gnv_app.inv_empwrkmanager.is_empwrk then
	else
		ids_tallermarca.of_reset()
	end if
end if
if ids_tallermarca.RowCount() > 0 then
else
	ids_tallermarca.of_retrieve (gnv_app.inv_empwrkmanager.is_empwrk)
	inv_manager.of_commit()
end if

return
end subroutine

public function integer of_reselect (ref n_ds ads_target, long al_numinterno);n_cst_sql       	lnv_sql
n_cst_sqlattrib 	lnv_sqlattrib1[]
n_cst_sqlattrib 	lnv_sqlattrib2[]

Integer	li_return

String	ls_emp
String	ls_taller
String	ls_sql
String	ls_initialSql

choose case is_key
	case 'CITA'
		ads_target    = ids_aux_show10
		ls_initialSql = ids_show10.describe('DataWindow.Table.Select')
	case 'CITADET'
		ads_target    = ids_aux_s10det
		ls_initialSql = ids_s10det.describe('DataWindow.Table.Select')
	case 'PRESUP'
		ads_target    = ids_aux_show20
		ls_initialSql = ids_show20.describe('DataWindow.Table.Select')
	case 'OT'
		ads_target    = ids_aux_show30
		ls_initialSql = ids_show30.describe('DataWindow.Table.Select')
	case 'OTDET'
		ads_target    = ids_aux_s30det
		ls_initialSql = ids_s30det.describe('DataWindow.Table.Select')
end choose

li_return = lnv_sql.of_Parse (ls_InitialSQL, lnv_sqlattrib1)

lnv_sqlattrib2[1].s_verb		= lnv_sqlattrib1[1].s_verb
lnv_sqlattrib2[1].s_tables		= lnv_sqlattrib1[1].s_tables
lnv_sqlattrib2[1].s_columns	= lnv_sqlattrib1[1].s_columns
lnv_sqlattrib2[1].s_where		= lnv_sqlattrib1[1].s_where

if lnv_sqlattrib1[1].s_where > '' then
	lnv_sqlattrib2[1].s_where = lnv_sqlattrib2[1].s_where + ' AND '
end if
lnv_sqlattrib2[1].s_where = lnv_sqlattrib2[1].s_where + '(ttOTCab.NumInterno=' + string(al_numinterno) + ')'

ls_sql = lnv_sql.of_Assemble (lnv_sqlattrib2)

ads_target.Reset()
ads_target.Modify('DataWindow.Table.Select="' + ls_sql + '"')

ls_emp    = gnv_app.inv_empwrkmanager.is_empwrk
ls_taller = gnv_app.inv_empwrkmanager.is_talwrk

sqlca.of_retrieve_begin ()
if ls_emp > '' and ls_taller > '' then
	ads_target.of_Retrieve (ls_emp, ls_taller)
else
end if
sqlca.of_retrieve_end ()

if ads_target.rowcount( ) > 0 then
else
	return FAILURE
end if

return SUCCESS

end function

public subroutine of_destroy ();//JMR:22.7.2013 40801435244 - Parece no ejecutar el destructor de los objetos de forma automática!
//Pasamos aquí lo que había en el destructor
f_SetPlatform (inv_platform, false)

uo_servicebus.of_stop()

if isvalid(iw_datoscli) then Close (iw_datoscli)

of_destroy(inv_planCortesia_popup)	// Ref.: 18741556467 - jdm - 22/05/2007
// <----- 40801435244

of_destroy(ids_ttotcab)
of_destroy(ids_show10)
of_destroy(ids_show20)
of_destroy(ids_show30)
of_destroy(ids_s30det)
of_destroy(ids_aux_show10)
of_destroy(ids_aux_show20)
of_destroy(ids_aux_show30)
of_destroy(ids_aux_s30det)
of_destroy(ids_s10det)
of_destroy(inv_keyreader)
of_destroy(inv_ttotOpen)		// FAB - 36551114409 - 31/01/2013 
of_destroy (inv_timer)

super::of_destroy()

end subroutine

public subroutine of_set_groupby (string as_groupby, long al_row);Long		ll_row
Long		ll_row2
Long		ll_start
Long		ll_end
Long		ll_find

Integer	li_PiezasNoServidas
INT		li_totalLineasRec		// Ref.: 29131631229 - jdm - 01/04/2010
INT		li_lineasReservadas		// Ref.: 29131631229 - jdm - 01/04/2010
INT		li_lineasConfirmadas	// Ref.: 29131631229 - jdm - 01/04/2010
INT		li_lineasBackorder		// Ref.: 29131631229 - jdm - 01/04/2010
INT		li_lineasParciales		// Ref.: 29251445490 - jdm - 12/04/2010

String	ls_sort
String	ls_value
String	ls_taller
String	ls_StatusEnCurso
String   ls_fecha

BOOLEAN	lb_reservaEnCita	// Ref.: 29131631229 - jdm - 01/04/2010

if not ib_haygroupby then return

if not ib_forcegroupby then
	if al_row = 0 and is_groupbyvalue = as_groupby and as_groupby > '' then
		dw_show10.GroupCalc()
		dw_show20.GroupCalc()
		dw_show30.GroupCalc()
		dw_s30det.GroupCalc()
		dw_s10det.GroupCalc()	// FAB - 5/12/2007 20661053029
		return
	end if
end if

dw_show10.SetRedraw(false)
dw_show20.SetRedraw(false)
dw_show30.SetRedraw(false)
dw_s30det.SetRedraw(false)
dw_s10det.SetRedraw(false)	// FAB - 5/12/2007 20661053029

ib_forcegroupby = false
ls_taller       = gnv_app.inv_empwrkmanager.is_talwrk
is_groupbyvalue = as_groupby

if is_otrasmarcas > '' then
else
	is_otrasmarcas = of_get_classtext ('LITERAL','OTRASMARCAS','*')
end if

if is_convehcortesia > '' then
else
	is_convehcortesia = gnv_app.inv_language.of_getliteral ('LITERAL','OTTIPOLINEA','9')
end if

// tgagendatarea_iniciofecha,tgagendatarea_iniciohora,tgagendatarea_iniciominuto

as_groupby = lower(as_groupby)

if gnv_app.inv_empWrkManager.ids_tal.rowcount()>0 then	//IPS:27.01.2011-32201734286
	// =====
	// Ref.: 29131631229 - jdm - 01/04/2010
	if ( gnv_app.inv_empWrkManager.ids_tal.GetItemNumber(1, "ReservarPiezasEnCita") > 0 ) then
		lb_reservaEnCita = TRUE
	end if
	// =====
end if		//IPS:27.01.2011-32201734286

if is_key = 'CITA' then
	if al_row > 0 then
		ll_start = al_row
		ll_end   = al_row
	else
		ll_start = 1
		ll_end   = dw_show10.RowCount()
	end if
	ls_fecha = ''
	if ll_end > 0 then
		for ll_row = ll_start to ll_end
			ls_value = ''
			choose case as_groupby
				case 'nogroup'
				case 'fecha'
					if isnull(dw_show10.GetItemDateTime(ll_row,'tgagendatarea_iniciofecha')) or &
						year(date(dw_show10.GetItemDateTime(ll_row,'tgagendatarea_iniciofecha'))) < 1950 then
					else
						// jce 12-09-2013 41780948183 -> retocar tb ordenacion
						ls_value =  string(dw_show10.GetItemDateTime(ll_row,'tgagendatarea_iniciofecha'),'dd/mm/yyyy')
						ls_value +=' ( '+ gf_descrip_day(dw_show10.GetItemDateTime(ll_row,'tgagendatarea_iniciofecha'))+' )'
					end if
				case 'seccion'
					ls_value = dw_show10.GetItemString(ll_row,'ttseccion_descrip')
				case 'recepcionista'
					ls_value = dw_show10.GetItemString(ll_row,'ttrecepcionista_nombre')
				case 'recepcionistaseccion'
					ls_value = dw_show10.GetItemString(ll_row,'ttrecepcionista_nombre') + ' / ' + dw_show10.GetItemString(ll_row,'ttseccion_descrip')
				case 'seccionrecepcionista'
					ls_value = dw_show10.GetItemString(ll_row,'ttseccion_descrip')      + ' / ' + dw_show10.GetItemString(ll_row,'ttrecepcionista_nombre')
				case 'estado'
					ls_StatusEnCurso = dw_show10.GetItemString (ll_row,'StatusEnCurso')	
					if ls_StatusEnCurso > '' then
						ll_find = ids_otstatus.Find ('codigo="' + ls_StatusEnCurso  + '"',1,ids_otstatus.RowCount())
						if ll_find > 0 then
							ls_value = ids_otstatus.GetItemString (ll_find,'descrip')
						end if
					// =====
					// Ref.: 29131631229 - jdm - 01/04/2010
					else
						// Comprobamos si hay status de reserva de piezas
						if ( lb_reservaEnCita ) then
							li_totalLineasRec  	 = dw_show10.GetItemNumber(ll_row, "TotalLineasRec")
							li_lineasBackorder   = dw_show10.GetItemNumber(ll_row, "LineasBackorder")
							li_lineasReservadas  = dw_show10.GetItemNumber(ll_row, "LineasReservadas")
							li_lineasConfirmadas = dw_show10.GetItemNumber(ll_row, "LineasConfirmadas")
							li_lineasParciales	 = dw_show10.GetItemNumber(ll_row, "LineasParciales")	// Ref.: 29251445490 - jdm - 12/04/2010
							
							if ( li_totalLineasRec > 0 ) then
								if ( li_lineasBackorder = 0 and (li_totalLineasRec = li_lineasReservadas + li_lineasConfirmadas) ) then
									// Piezas resevadas
									ls_value = of_get_classText("LITERAL", "TOOLTIP", "CITA_PIEZASRESERVADAS")
								// Ref.: 29251445490 - jdm - 12/04/2010 - Añadimos la comprobación de reservas parciales
								elseif ( (li_totalLineasRec > li_lineasReservadas + li_lineasConfirmadas) or &
										 (li_totalLineasRec < li_lineasReservadas + li_lineasBackorder) or & 
										 (li_lineasParciales > 0) ) then
									// Piezas pendientes de reserva
									ls_value = of_get_classText("LITERAL", "TOOLTIP", "CITA_PIEZASBACKORDER")
								end if
							end if
						end if
					// =====	
					end if
				case 'marca'
					of_init_tgmarca()
					ls_value = dw_show10.GetItemString(ll_row,as_groupby)
					if ids_tallermarca.find ('taller = "' + ls_taller + '" and marca = "' + ls_value + '"',1,ids_tallermarca.Rowcount()) > 0 then
						ll_find  = ids_tgmarca.find ('marca = "' + ls_value + '"',1,ids_tgmarca.RowCount())
						if ll_find > 0 then
							ls_value = ids_tgmarca.GetItemString (ll_find, 'descrip')
						end if
					else
						ls_value = is_otrasmarcas
					end if
				case 'cortesia'
					if dw_show10.GetItemNumber(ll_row,'tienevehcortesia') > 0 then
						ls_value = is_convehcortesia
					end if
			end choose
		
			if isnull(ls_value) then ls_value = ''				
			dw_show10.SetItem (ll_row, 'groupby', ls_value)
		next
	end if
end if

if is_key = 'CITADET' then
// FAB - 5/12/2007 20661053029
	if al_row > 0 then
		ll_start = al_row
		ll_end   = al_row
	else
		ll_start = 1
		ll_end   = dw_s10det.RowCount()
	end if
	if ll_end > 0 then
		for ll_row = ll_start to ll_end
			ls_value = ''
			choose case as_groupby
				case 'nogroup'
				case 'fecha'
					if isnull(dw_s10det.GetItemDateTime(ll_row,'tgagendatarea_iniciofecha')) or &
						year(date(dw_s10det.GetItemDateTime(ll_row,'tgagendatarea_iniciofecha'))) < 1950 then
					else
						ls_value =  string(dw_s10det.GetItemDateTime(ll_row,'tgagendatarea_iniciofecha'),'dd/mm/yyyy')
						ls_value +=' ( '+ gf_descrip_day(dw_s10det.GetItemDateTime(ll_row,'tgagendatarea_iniciofecha'))+' )'
					end if
				case 'seccion'
					ls_value = dw_s10det.GetItemString(ll_row,'ttseccion_descrip')
				case 'recepcionista'
					ls_value = dw_s10det.GetItemString(ll_row,'ttrecepcionista_nombre')
				case 'recepcionistaseccion'
					ls_value = dw_s10det.GetItemString(ll_row,'ttrecepcionista_nombre') + ' / ' + dw_s10det.GetItemString(ll_row,'ttseccion_descrip')
				case 'seccionrecepcionista'
					ls_value = dw_s10det.GetItemString(ll_row,'ttseccion_descrip')      + ' / ' + dw_s10det.GetItemString(ll_row,'ttrecepcionista_nombre')
				case 'estado'
					ls_StatusEnCurso = dw_s10det.GetItemString (ll_row,'StatusEnCurso')	
					if ls_StatusEnCurso > '' then
						ll_find = ids_otstatus.Find ('codigo="' + ls_StatusEnCurso  + '"',1,ids_otstatus.RowCount())
						if ll_find > 0 then
							ls_value = ids_otstatus.GetItemString (ll_find,'descrip')
						end if
					end if
				case 'marca'
					of_init_tgmarca()
					ls_value = dw_s10det.GetItemString(ll_row,as_groupby)
					if ids_tallermarca.find ('taller = "' + ls_taller + '" and marca = "' + ls_value + '"',1,ids_tallermarca.Rowcount()) > 0 then
						ll_find  = ids_tgmarca.find ('marca = "' + ls_value + '"',1,ids_tgmarca.RowCount())
						if ll_find > 0 then
							ls_value = ids_tgmarca.GetItemString (ll_find, 'descrip')
						end if
					else
						ls_value = is_otrasmarcas
					end if
				case 'cortesia'
					if dw_s10det.GetItemNumber(ll_row,'tienevehcortesia') > 0 then
						ls_value = is_convehcortesia
					end if
			end choose
		
			if isnull(ls_value) then ls_value = ''
			dw_s10det.SetItem (ll_row, 'groupby', ls_value)
		next
	end if
end if


if is_key = 'PRESUP' then
	if al_row > 0 then
		ll_start = al_row
		ll_end   = al_row
	else
		ll_start = 1
		ll_end   = dw_show20.RowCount()
	end if
	if ll_end > 0 then
		for ll_row = ll_start to ll_end
			ls_value = ''
			choose case as_groupby
				case 'nogroup'
				case 'fecha'
					if isnull(dw_show20.GetItemDateTime(ll_row,'FechaPresup')) or &
						year(date(dw_show20.GetItemDateTime(ll_row,'FechaPresup'))) < 1950 then
					else
						ls_value =  string(dw_show20.GetItemDateTime(ll_row,'FechaPresup'),'dd/mm/yyyy')
						ls_value +=' ( '+ gf_descrip_day(dw_show20.GetItemDateTime(ll_row,'FechaPresup'))+' )'
					end if
				case 'seccion'
					ls_value = dw_show20.GetItemString(ll_row,'ttseccion_descrip')
				case 'recepcionista'
					ls_value = dw_show20.GetItemString(ll_row,'ttrecepcionista_nombre')
				case 'recepcionistaseccion'
					ls_value = dw_show20.GetItemString(ll_row,'ttrecepcionista_nombre') + ' / ' + dw_show20.GetItemString(ll_row,'ttseccion_descrip')
				case 'seccionrecepcionista'
					ls_value = dw_show20.GetItemString(ll_row,'ttseccion_descrip')      + ' / ' + dw_show20.GetItemString(ll_row,'ttrecepcionista_nombre')
				case 'estado'
				case 'marca'
					of_init_tgmarca()
					ls_value = dw_show20.GetItemString(ll_row,as_groupby)
					if ids_tallermarca.find ('taller = "' + ls_taller + '" and marca = "' + ls_value + '"',1,ids_tallermarca.Rowcount()) > 0 then
						ll_find  = ids_tgmarca.find ('marca = "' + ls_value + '"',1,ids_tgmarca.RowCount())
						if ll_find > 0 then
							ls_value = ids_tgmarca.GetItemString (ll_find, 'descrip')
						end if
					else
						ls_value = is_otrasmarcas
					end if
				case 'cortesia'
					if dw_show20.GetItemNumber(ll_row,'tienevehcortesia') > 0 then
						ls_value = is_convehcortesia
					end if
			end choose
		
			if isnull(ls_value) then ls_value = ''
			dw_show20.SetItem (ll_row, 'groupby', ls_value)
		next
	end if
end if

if is_key = 'OT' then
	if al_row > 0 then
		ll_start = al_row
		ll_end   = al_row
	else
		ll_start = 1
		ll_end   = dw_show30.RowCount()
	end if
	if ll_end > 0 then
		for ll_row = ll_start to ll_end
			ls_value = ''
			choose case as_groupby
				case 'nogroup'
				case 'fecha'
					if isnull(dw_show30.GetItemDateTime(ll_row,'entregaprevfecha')) or &
						year(date(dw_show30.GetItemDateTime(ll_row,'entregaprevfecha'))) < 1950 then
					else
					//	ls_value = 'date='+ string(dw_show30.GetItemDateTime(ll_row,'entregaprevfecha'),'yyyy/mm/dd')
//						if gf_descrip_day(dw_show30.GetItemDateTime(ll_row,'entregaprevfecha')) > '' then
//							ls_value +=' ( '+ gf_descrip_day(dw_show30.GetItemDateTime(ll_row,'entregaprevfecha'))+' )'
//						end if	
						ls_value =  string(dw_show30.GetItemDateTime(ll_row,'entregaprevfecha'),'dd/mm/yyyy')
						ls_value +=' ( '+ gf_descrip_day(dw_show30.GetItemDateTime(ll_row,'entregaprevfecha'))+' )'


						//ls_value = 'date=' + string(dw_show30.GetItemDateTime(ll_row,'entregaprevfecha'),'yyyy/mm/dd')
					end if
				case 'seccion'
					ls_value = dw_show30.GetItemString(ll_row,'ttseccion_descrip')
				case 'recepcionista'
					ls_value = dw_show30.GetItemString(ll_row,'ttrecepcionista_nombre')
				case 'recepcionistaseccion'
					ls_value = dw_show30.GetItemString(ll_row,'ttrecepcionista_nombre') + ' / ' + dw_show30.GetItemString(ll_row,'ttseccion_descrip')
				case 'seccionrecepcionista'
					ls_value = dw_show30.GetItemString(ll_row,'ttseccion_descrip')      + ' / ' + dw_show30.GetItemString(ll_row,'ttrecepcionista_nombre')
				case 'estado'
					ls_StatusEnCurso = dw_show30.GetItemString (ll_row,'StatusEnCurso')	
					if ls_StatusEnCurso > '' then
						ll_find = ids_otstatus.Find ('codigo="' + ls_StatusEnCurso  + '"',1,ids_otstatus.RowCount())
						if ll_find > 0 then
							if ids_otstatus.GetItemNumber (ll_find,'aviso') = 1 then
								ls_value = ids_otstatus.GetItemString (ll_find,'descrip')
							end if
						end if
					else
						li_PiezasNoServidas = dw_show30.GetItemNumber (ll_row,'PiezasNoServidas')
						if li_PiezasNoServidas > 0 then
							ls_value = is_tooltip_PiezasNoServidas
						end if
					end if
				case 'marca'
					of_init_tgmarca()
					ls_value = dw_show30.GetItemString(ll_row,as_groupby)
					if ids_tallermarca.find ('taller = "' + ls_taller + '" and marca = "' + ls_value + '"',1,ids_tallermarca.Rowcount()) > 0 then
						ll_find  = ids_tgmarca.find ('marca = "' + ls_value + '"',1,ids_tgmarca.RowCount())
						if ll_find > 0 then
							ls_value = ids_tgmarca.GetItemString (ll_find, 'descrip')
						end if
					else
						ls_value = is_otrasmarcas
					end if
				case 'cortesia'
					if dw_show30.GetItemNumber(ll_row,'tienevehcortesia') > 0 then
						ls_value = is_convehcortesia
					end if
			end choose
		
			if isnull(ls_value) then ls_value = ''
			dw_show30.SetItem (ll_row, 'groupby', ls_value)
		next
	end if
end if

if is_key = 'OTDET' then
	if al_row > 0 then
		ll_start = al_row
		ll_end   = al_row
	else
		ll_start = 1
		ll_end   = dw_s30det.RowCount()
	end if
	if ll_end > 0 then
		for ll_row = ll_start to ll_end
			ls_value = ''
			choose case as_groupby
				case 'nogroup'
				case 'fecha'
					if isnull(dw_s30det.GetItemDateTime(ll_row,'entregaprevfecha')) or &
						year(date(dw_s30det.GetItemDateTime(ll_row,'entregaprevfecha'))) < 1950 then
					else
						ls_value =  string(dw_s30det.GetItemDateTime(ll_row,'entregaprevfecha'),'dd/mm/yyyy')
						ls_value +=' ( '+ gf_descrip_day(dw_s30det.GetItemDateTime(ll_row,'entregaprevfecha'))+' )'
					end if
				case 'seccion'
					ls_value = dw_s30det.GetItemString(ll_row,'ttseccion_descrip')
				case 'recepcionista'
					ls_value = dw_s30det.GetItemString(ll_row,'ttrecepcionista_nombre')
				case 'recepcionistaseccion'
					ls_value = dw_s30det.GetItemString(ll_row,'ttrecepcionista_nombre') + ' / ' + dw_s30det.GetItemString(ll_row,'ttseccion_descrip')
				case 'seccionrecepcionista'
					ls_value = dw_s30det.GetItemString(ll_row,'ttseccion_descrip')      + ' / ' + dw_s30det.GetItemString(ll_row,'ttrecepcionista_nombre')
				case 'estado'
					ls_StatusEnCurso = dw_s30det.GetItemString (ll_row,'StatusEnCurso')	
					if ls_StatusEnCurso > '' then
						ll_find = ids_otstatus.Find ('codigo="' + ls_StatusEnCurso  + '"',1,ids_otstatus.RowCount())
						if ll_find > 0 then
							if ids_otstatus.GetItemNumber (ll_find,'aviso') = 1 then
								ls_value = ids_otstatus.GetItemString (ll_find,'descrip')
							end if
						end if
					else
						li_PiezasNoServidas = dw_s30det.GetItemNumber (ll_row,'PiezasNoServidas')
						if li_PiezasNoServidas > 0 then
							ls_value = is_tooltip_PiezasNoServidas
						end if
					end if
				case 'marca'
					of_init_tgmarca()
					ls_value = dw_s30det.GetItemString(ll_row,as_groupby)
					if ids_tallermarca.find ('taller = "' + ls_taller + '" and marca = "' + ls_value + '"',1,ids_tallermarca.Rowcount()) > 0 then
						ll_find  = ids_tgmarca.find ('marca = "' + ls_value + '"',1,ids_tgmarca.RowCount())
						if ll_find > 0 then
							ls_value = ids_tgmarca.GetItemString (ll_find, 'descrip')
						end if
					else
						ls_value = is_otrasmarcas
					end if
				case 'cortesia'
					if dw_s30det.GetItemNumber(ll_row,'tienevehcortesia') > 0 then
						ls_value = is_convehcortesia
					end if
			end choose
		
			if isnull(ls_value) then ls_value = ''
			dw_s30det.SetItem (ll_row, 'groupby', ls_value)
		next
	end if
end if

if is_orderbyvalue > '' then
	if is_lastsorted > '' then
	else
		is_lastsorted = is_orderbyvalue
	end if
	of_set_orderby (is_lastsorted, true)	// true = no cambiar el orden ASC/DESC
else
	dw_show10.Sort ()
	dw_show20.Sort ()
	dw_show30.Sort ()
	dw_s30det.Sort ()
	dw_s10det.Sort ()	// FAB - 5/12/2007 20661053029
end if

if not ib_retrieving then
	dw_show10.SetRedraw(true)
	dw_show20.SetRedraw(true)
	dw_show30.SetRedraw(true)
	dw_s30det.SetRedraw(true)
	dw_s10det.SetRedraw(true)	// FAB - 5/12/2007 20661053029
end if

return
end subroutine

public subroutine of_set_groupby (string as_groupby);of_set_groupby (as_groupby, 0)
end subroutine

public function integer of_scrolltoot (long al_numinterno);u_dw	ldw

Long	ll_find

choose case is_key
	case 'OT'
		ldw = dw_show30
	case 'OTDET'
		ldw = dw_s30det
	case else
		return SUCCESS
end choose

ll_find = ldw.of_find ('numinterno = ' + string(al_numinterno))
if ll_find > 0 then
	ldw.ScrollToRow (ll_find)	
	return SUCCESS
end if
return FAILURE


end function

public function integer of_scrolltopresup (long al_numinterno);Long	ll_find

if is_key = 'PRESUP' then
else
	return SUCCESS
end if

ll_find = dw_show20.find ('numinterno = ' + string(al_numinterno),1,dw_show20.RowCount())

if ll_find > 0 then
	dw_show20.ScrollToRow (ll_find)
	return SUCCESS
end if

return FAILURE

end function

public subroutine of_splitting (ref u_dw adw_source, string as_column, long al_xpos);n_ds	lds_aux

String	ls_lista[]
String	ls_null[]
String	ls_header
String	ls_headerAnt		// Ref.: 17852158387 - jdm - 01/03/2007
String	ls_tag				// Ref.: 17852158387 - jdm - 01/03/2007
String	ls_type
String	ls_initcolumn
String	ls_ultcolumn
String	ls_columnlist[]
String	ls_createline = 'create line(band=foreground x1="@x" y1="0" x2="@x" y2="@y"  name=lineavert  tag="" visible="1" pen.style="0" pen.width="1" pen.color="0"  background.mode="2" background.color="0" )'

Long	ll_xposini
Long	ll_x
Long	ll_x_ant
Long	ll_row
Long	ll_offset
Long	ll_width
Long	ll_totalwidth
Long	ll_maxwidth
LONG	ll_mergeWidth		// Ref.: 17852158387 - jdm - 02/03/2007

Integer	li_count

Boolean	lb_firstcolumn
Boolean	lb_modify = true

of_get_columnlist()

choose case adw_source
	case dw_show10
		ls_columnlist = is_listacolumn10

	case dw_show20
		ls_columnlist = is_listacolumn20

	case dw_show30
		ls_columnlist = is_listacolumn30

	case dw_s30det
//		return
		ls_columnlist = is_listacolumn3d

	case dw_s10det
		ls_columnlist = is_listacolumn1d

end choose

as_column     = lower(as_column)
ls_initcolumn = as_column

if ib_columnasiguiente then
	for li_count = 1 to upperbound(ls_columnlist)
		if ( adw_source.describe(ls_columnlist[li_count] + '.type') = 'line' ) then 
			continue
		end if
		choose case ls_columnlist[li_count]
			case 'groupby_comp'
				continue
			case 'fechaperturax'
				ls_header = 'fechaaperturaot_t'				
			case else				
				// Ref.: 17852158387 - jdm - 01/03/2007
				// Comprobamos si el encabezado no es estándard (<nombre_campo>_t)	
				ls_tag = adw_source.Describe(ls_columnlist[li_count] + '.Tag')
				if ( Pos(ls_tag, "HEADER=") > 0 ) then
					ls_header = gnv_app.inv_string.of_getKeyValue(ls_tag, "HEADER", ";")
				else
					ls_header = ls_columnlist[li_count] + '_t'
				end if	
				
		end choose
		
		// 30181437535  SJP  16-7-2010
		if adw_source.describe(ls_header + '.type') = '!' then continue
		// ---

		if ls_header = ls_initcolumn then exit
		as_column = ls_header
	next
	as_column = as_column
end if

as_column = lower(as_column)

if as_column = 'tooltip_t' then return

ll_xposini = il_xposclick
ll_offset  = al_xpos - ll_xposini
ll_x       = long(adw_source.describe(as_column + '.x')) + long(adw_source.describe(as_column + '.width'))

if adw_source.describe('lineavert.x1') = '!' then
	ls_createline = gnv_app.inv_string.of_GlobalReplace (ls_createline,'@x',string(ll_x))
	ls_createline = gnv_app.inv_string.of_GlobalReplace (ls_createline,'@y',string(adw_source.height))
else
	ls_createline = 'lineavert.X1="' + string(ll_x) + '" lineavert.X2="' + string(ll_x) + '" lineavert.visible="1"'
end if

adw_source.modify (ls_createline)

if abs(ll_offset) < 2 then return

il_xposclick = al_xpos

adw_source.SetRedraw(false)

for li_count = 1 to upperbound(ls_columnlist)
	// Ref.: 17852158387 - jdm - 01/03/2007
	ls_headerAnt = ls_header
	ls_type = adw_source.describe(ls_columnlist[li_count] + '.type')
	// Ref.: 17852158387 - jdm - 28/02/2007
	ls_tag  = adw_source.describe(ls_columnlist[li_count] + '.Tag')
	choose case ls_columnlist[li_count]
		case 'fechaperturax'
			ls_header = 'fechaaperturaot_t'
		case else
			// Ref.: 17852158387 - jdm - 28/02/2007
			// Comprobamos si el encabezado no es estándard (<nombre_campo>_t)	
			if ( Pos(ls_tag, "HEADER=") > 0 ) then
				ls_header = gnv_app.inv_string.of_getKeyValue(ls_tag, "HEADER", ";")
			else
				ls_header = ls_columnlist[li_count] + '_t'
			end if
	end choose
	ll_x_ant = ll_x
	choose case lower(ls_type)
		case 'line'
			ll_x = long(adw_source.describe(ls_columnlist[li_count] + '.X1'))
		case else
			ll_x = long(adw_source.describe(ls_columnlist[li_count] + '.X'))
			ls_ultcolumn = ls_columnlist[li_count]
	end choose
	if ls_header = as_column then
		lb_firstcolumn = true
	else
		if lb_firstcolumn = false then continue
	end if
	if ls_header = as_column then		
		// Ref.: 17852158387 - jdm - 01/03/2007
		// Si el encabezado ya ha sido tratado, lo obviamos
		ll_width = long(adw_source.describe(as_column + '.width')) /*+ ll_offset*/
		if ( ls_header <> ls_headerAnt ) then
			ll_width += ll_offset
		end if
		
		if ll_width < 0 then
			ib_splitting       = false
			is_columnsplitting = ''
			adw_source.Object.Datawindow.Pointer = 'Arrow!'
			adw_source.modify ('lineavert.visible="0"')
			lb_modify = false
		end if
		if lb_modify then
			ll_totalwidth = long(adw_source.describe(as_column + '.x')) + ll_width
			// Ref.: 17852158387 - jdm - 01/03/2007
			if ( Pos(ls_tag, "MERGE=Y") > 0 ) then
			else
				adw_source.modify(ls_columnlist[li_count] + '.width="' + String(ll_width) + '"')
			end if
			adw_source.Modify(ls_header + '.Width="' + String(ll_width) + '"')			
		end if
	else
		ll_x = ll_x + ll_offset
		// 30181437535  SJP  16-7-2010
		/*
		if ll_x < ll_x_ant then
			ib_splitting       = false
			is_columnsplitting = ''
			adw_source.Object.Datawindow.Pointer = 'Arrow!'
			adw_source.modify ('lineavert.visible="0"')
			lb_modify = false
		end if
		*/
		// ---
		if lb_modify then
			if ll_x + long(adw_source.describe(ls_columnlist[li_count] + '.width')) > ll_totalwidth then
				ll_totalwidth = ll_x + long(adw_source.describe(ls_columnlist[li_count] + '.width'))
			end if
			choose case lower(ls_type)
				case 'line'
					if ll_maxwidth < ll_x then ll_maxwidth = ll_x
					adw_source.modify (ls_columnlist[li_count] + '.x1="' + string(ll_x) + '"')
					adw_source.modify (ls_columnlist[li_count] + '.x2="' + string(ll_x) + '"')
				case else										
					adw_source.modify (ls_columnlist[li_count] + '.x="'  + string(ll_x) + '"')
					// Ref.: 17852158387 - jdm - 01/03/2007
					// Si el encabezado es el mismo, no lo movemos
					if ( ls_header <> ls_headerAnt ) then
						adw_source.Modify(ls_header + '.x="'  + string(ll_x) + '"')
					end if
			end choose
		end if
	end if
next

// Ref.: 17852158387 - jdm - 05/03/2007
// Modificamos las dimensiones de los campos que ocupan más de una columna
if ( adw_source = dw_s30det ) OR ( adw_source = dw_s10det ) then
	for li_count = 1 to UpperBound(ls_columnList)
		ls_tag  = adw_source.describe(ls_columnlist[li_count] + '.Tag')
		if ( Pos(ls_tag, "MERGE=Y") > 0 ) then
			// Obtenemos la columna final del merge
			ls_header = gnv_app.inv_string.of_getKeyValue(ls_tag, "ENDMERGE", ";")
			if ( trim(ls_header) <> "" ) then
				// Comprobamos si se está modificando la columna final del merge
				if ( Long(adw_source.describe(as_column + '.X')) <= Long(adw_source.describe(ls_header + '.X')) ) then
					// Añadimos el desplazamiento a la anchura actual
					ll_mergeWidth = Long(adw_source.Describe(ls_columnList[li_count] + '.Width'))
					ll_mergeWidth += ll_offset
					adw_source.Modify(ls_columnList[li_count] + '.Width="' + String(ll_mergeWidth) + '"')
				end if 
			end if			
		end if
	next
end if

if ll_maxwidth > 0 then
	adw_source.modify('groupby_comp.width="' + string(ll_maxwidth) + '"')
end if

adw_source.SetRedraw(true)

return

end subroutine

public subroutine of_get_columnlist ();u_dw		ldw_wrk

n_ds		lds_aux

Integer	li_count
Integer	li_item

Long		ll_row
Long		ll_x

String	ls_lista2[]
String	ls_lista[]
String	ls_null[]
String	ls_type

if upperbound (is_listacolumn30) > 0 then return

for li_item = 1 to 5
	choose case li_item
		case 1; ldw_wrk = dw_show10
		case 2; ldw_wrk = dw_show20
		case 3; ldw_wrk = dw_show30
		case 4; ldw_wrk = dw_s30det
		case 5; ldw_wrk = dw_s10det
	end choose

	ls_lista  = ls_null
	ls_lista2 = ls_null
	li_count  = gf_lista_objetos (ldw_wrk,ls_lista,'*','*','detail')

	for li_count = 1 to upperbound(ls_lista)
		if pos(ldw_wrk.describe(ls_lista[li_count] + '.tag'),'NOWIDTH=Y') > 0 then
		else			
			ls_lista2[upperbound(ls_lista2) + 1] = lower(ls_lista[li_count])
		end if				
	next

	lds_aux = create n_ds
	lds_aux.dataobject = 'dw_aux_clasificacion'
	lds_aux.of_settransobject (sqlca)

	lds_aux.of_reset()

	for li_count = 1 to upperbound(ls_lista2)		
		ll_row = lds_aux.InsertRow(0)
		ls_type = ldw_wrk.describe(ls_lista2[li_count] + '.type')
		choose case lower(ls_type)
			case 'line'
				ll_x = long(ldw_wrk.describe(ls_lista2[li_count] + '.X1'))
			case else
				ll_x = long(ldw_wrk.describe(ls_lista2[li_count] + '.X'))
		end choose
		lds_aux.SetItem (ll_row,'nombre',ls_lista2[li_count])
		lds_aux.SetItem (ll_row,'xpos'  ,ll_x)
	next

	lds_aux.SetSort ('xpos A, nombre A')
	lds_aux.Sort ()

	for li_count = 1 to lds_aux.RowCount()
		choose case li_item
			case 1
				is_listacolumn10[li_count] = lds_aux.GetItemString (li_count, 'nombre')
			case 2
				is_listacolumn20[li_count] = lds_aux.GetItemString (li_count, 'nombre')
			case 3
				is_listacolumn30[li_count] = lds_aux.GetItemString (li_count, 'nombre')
			case 4
				is_listacolumn3d[li_count] = lds_aux.GetItemString (li_count, 'nombre')
			case 5
				is_listacolumn1d[li_count] = lds_aux.GetItemString (li_count, 'nombre')
		end choose
	next

	destroy lds_aux
next

return
end subroutine

public subroutine of_initsize ();String	ls_dataobject

this.SetRedraw (false)

ls_dataobject        = dw_show10.DataObject
dw_show10.DataObject = ''
dw_show10.DataObject = ls_dataobject
of_translate(dw_show10)

ls_dataobject        = dw_show20.DataObject
dw_show20.DataObject = ''
dw_show20.DataObject = ls_dataobject
of_translate(dw_show20)

ls_dataobject        = dw_show30.DataObject
dw_show30.DataObject = ''
dw_show30.DataObject = ls_dataobject
of_translate(dw_show30)

ls_dataobject        = dw_s30det.DataObject
dw_s30det.DataObject = ''
dw_s30det.DataObject = ls_dataobject
of_translate(dw_s30det)

ls_dataobject        = dw_s10det.DataObject
dw_s10det.DataObject = ''
dw_s10det.DataObject = ls_dataobject
of_translate(dw_s10det)

of_changevista()

this.SetRedraw (true)

end subroutine

public subroutine of_mousemove (ref u_dw adw_source, integer xpos, integer ypos, long row);api_rect	lstr_dest

Datawindow	ldw_datos

Boolean lb_haydrag
Boolean lb_visible
Boolean lb_iwdatoscli

String  ls_emp
String  ls_tooltip
String  ls_BandAtPointer
String  ls_ObjectAtPointer
String  ls_BandName
String  ls_ObjectName
String  ls_row
String  ls_evaluate
String  ls_describe
String  ls_name2
String  ls_numero
String  ls_2
String  ls_key
String  ls_condi_comp

Long	  ll_posy=1
Long	  ll_first
Long	  ll_back
Long    ll_row
Long	  ll_result
Long	  ll_numinterno
Long	  ll_rows
Long	  ll_intervencion
Long	  ll_rowy
Long	  ll_x
Long	  ll_y

Integer li_cuantos
Integer li_count
Integer li_heighttext
Integer li_widthtext
Integer li_width

Dec{2}  lr_width

of_calendar_popup_stop()

this.event ue_parentnotify ('MOUSEMOVE')

if is_columnsplitting > '' then
	if ib_splitting then
		adw_source.Object.DataWindow.Pointer = '..\recursos\cur\ve_sizec.CUR'

		of_splitting (adw_source, is_columnsplitting, xpos)
		il_last_xpos = xpos
		il_last_ypos = ypos
		return
	end if
end if


if (adw_source.ib_dragflag) then
	is_columnsplitting = ''
	if abs(adw_source.il_last_dragx - adw_source.PointerX()) > 10 then lb_haydrag = true
	if abs(adw_source.il_last_dragy - adw_source.PointerY()) > 10 then lb_haydrag = true
	if (lb_haydrag) then		
		adw_source.ib_dragflag = false
		choose case adw_source
			case dw_show10
				choose case ii_dragid
					case 110
						adw_source.DragIcon = is_tarea_icono
					case else
						adw_source.DragIcon = is_ttotcab_icono
				end choose
			case else
				adw_source.DragIcon       = is_ttotcab_icono
		end choose
		is_enter_dragicon               = adw_source.dragicon		
		inv_manager.is_dragicon         = adw_source.dragicon		
		// 36200911577  SJP  21-3-2012
		/*
		inv_manager.il_dragbegin_source = ii_dragid
		inv_manager.il_dragbegin_row    = adw_source.il_last_row_clicked
		*/
		inv_manager.of_dragbegin(ii_dragid, adw_source.il_last_row_clicked, adw_source)
		// ---
		inv_manager.of_set_notestimer(FALSE)
		of_show_dragsource (adw_source,adw_source.il_last_row_clicked,true) 
		adw_source.Drag(Begin!) 
		il_last_xpos = xpos
		il_last_ypos = ypos
		return
	end if
else
	if ib_nost_tooltip then
		il_last_xpos = xpos
		il_last_ypos = ypos
		return
	end if

	if upperbound(ii_dwID) > 2 then
	else
		il_last_xpos = xpos
		il_last_ypos = ypos
		return
	end if
	if adw_source.describe ('r_target.y') = '!' then
	else
		il_last_xpos = xpos
		il_last_ypos = ypos
		return
	end if

	ls_BandAtPointer   = adw_source.GetBandAtPointer ()
	ls_ObjectAtPointer = adw_source.GetObjectAtPointer ()
	ls_BandName        = upper(mid (ls_BandAtPointer  ,1,pos (ls_BandAtPointer  ,"~t") -1))
	ls_ObjectName      = lower(mid (ls_ObjectAtPointer,1,pos (ls_ObjectAtPointer,"~t") -1))
	ls_Row             = mid (ls_ObjectAtPointer,pos (ls_ObjectAtPointer,"~t") +1 , len(ls_ObjectAtPointer))	
	ll_row             = long (ls_row)

	if ll_row = il_last_row_tooltip_text then
	else
		il_last_row_tooltip_text = ll_row
		is_lasttooltip           = ''
	end if

	choose case upper(ls_BandName)
		case 'DETAIL'
			adw_source.Object.DataWindow.Pointer = 'Arrow!'
			SetPointer(Arrow!)
			is_columnsplitting = ''
			choose case adw_source
				case dw_show30,dw_s30det,dw_show10,dw_s10det
					if ll_row > 0 then
						ls_tooltip = trim(adw_source.GetItemString (ll_row,'tooltip'))
						il_last_row_mousemove = ll_row
					end if
			end choose

			choose case ls_objectname
				case 'r_aviso','tooltip'
					of_hide_dwdatoscli(true)
					if ls_tooltip > '' then
					else
						ls_tooltip = ''
					end if
					choose case adw_source
						case dw_show10
							if gnv_app.inv_empWrkManager.ids_tal.rowcount()>0 then	//IPS:27.01.2011-32201734286
								// =====
								// Ref.: 28041025046 - jdm - 10/02/2010
								if ( ls_objectName = 'r_aviso' and gnv_app.inv_empWrkManager.ids_tal.GetItemNumber(1, "ReservarPiezasEnCita") > 0 ) then
									// =====
									// Ref.: 29131631229 - jdm - 01/04/2010
									if ( dw_show10.GetItemNumber(row, "TotalLineasRec") > 0 ) then
										ls_tooltip = is_tooltip_det[3]
									end if
									// =====
								end if
								// =====
							end if 	//IPS:27.01.2011-32201734286
							inv_Tooltip.SetTipText(adw_source,ii_dwID[1],ls_tooltip)
						case dw_show30
							inv_Tooltip.SetTipText(adw_source,ii_dwID[3],ls_tooltip)
						case dw_s30det
							inv_Tooltip.SetTipText(adw_source,ii_dwID[4],ls_tooltip)
						case dw_s10det
							inv_Tooltip.SetTipText(adw_source,ii_dwID[5],ls_tooltip)
					end choose
				case 'nada_t'
					of_hide_dwdatoscli(true)
					of_hide_tooltip(adw_source)
				case 'p_acabada'
					of_hide_dwdatoscli(true)
				case 'matric'
					of_hide_dwdatoscli(true)
					of_hide_tooltip(adw_source)
			end choose

			ls_tooltip = ''

			choose case ls_objectname
				case 'groupby_comp','razonx'
					of_hide_tooltip(adw_source)
				case 'tooltip','r_aviso'
				case 'p_cortesia'
					inv_Tooltip.SetTipText(adw_source,ii_dwID[4],is_tooltip_det[1])
					inv_Tooltip.SetTipText(adw_source,ii_dwID[5],is_tooltip_det[1])
					st_tooltip.visible  = false
					
				case 'p_garantia'
					inv_Tooltip.SetTipText(adw_source,ii_dwID[4],is_tooltip_det[2])
					st_tooltip.visible  = false
					
				case 'p_piezaenespera'
					inv_Tooltip.SetTipText(adw_source,ii_dwID[4],is_tooltip_det[3])
					st_tooltip.visible  = false
					
				// =====
				// Ref.: 21980853234 - jdm - 22/05/2008
				case "p_acabada"
					choose case ( adw_source )
						// =====
						// Ref.: 28041025046 - jdm - 10/02/2010
						case dw_show10
							inv_tooltip.SetTipText(adw_source, ii_dwID[1], is_tooltip_det[2])
						case dw_s10det
							inv_tooltip.SetTipText(adw_source, ii_dwID[5], is_tooltip_det[2])
						// =====
						case dw_show30 
							inv_tooltip.SetTipText(adw_source, ii_dwID[3], is_tooltip_det[5])
						case dw_s30det
							inv_tooltip.SetTipText(adw_source, ii_dwID[4], is_tooltip_det[5])
					end choose
					st_tooltip.Visible = FALSE
				// =====
					
				case else
					if is_key = 'OTDET' then
						inv_Tooltip.SetTipText(adw_source,ii_dwID[4],'')
					elseif is_key = 'CITADET' then
						inv_Tooltip.SetTipText(adw_source,ii_dwID[5],'')
					end if
					
					if adw_source.describe(ls_objectname + '.type') = 'line' then
						st_tooltip.visible  = false
					elseif ll_row > 0 then
						li_width = long(adw_source.describe(ls_objectname + '.width'))
						if ls_objectname > '' then
							if adw_source.describe(ls_objectname + '.type') = 'compute' then
								ls_tooltip = adw_source.describe(ls_objectname + '.expression')
								ls_tooltip = 'evaluate("' + ls_tooltip + '",' + string(ll_row) + ')'
								ls_tooltip = trim(adw_source.describe(ls_tooltip))
							elseif adw_source.describe(ls_objectname + '.type') = 'column' then
								ls_tooltip = 'lookupdisplay(' + ls_objectname + ')'
								ls_tooltip = 'evaluate("' + ls_tooltip + '",' + string(ll_row) + ')'
								ls_tooltip = trim(adw_source.describe(ls_tooltip))
								if lower(left(gnv_app.inv_dbtype.of_get_column_dbtype (adw_source,ls_objectname),4)) = 'date' then
									ls_tooltip = left (ls_tooltip,10)
								end if
							end if
						end if
					end if
			end choose

			if ls_tooltip > '' then				
				ls_tooltip = gnv_app.inv_string.of_globalreplace(ls_tooltip,char(9),' ')
				ls_tooltip = trim (ls_tooltip)
			end if
			
			if ls_tooltip > '' then
				// Ramon 19/9/2005 - is_lasttooltip almacena el ultimo tooltip mostrado.
				if is_lasttooltip = ls_tooltip then
					lr_width     = ir_lastwidth
					li_widthtext = ir_lastwidth
					if lr_width > li_width then
					else
						ls_tooltip = ''
					end if
				else
					ll_result = inv_Platform.of_GetTextSize(iw_parent, ls_tooltip, is_font, il_fontsize, false, false, false, ref li_heighttext, ref li_widthtext)
					lr_width  = li_widthtext
					is_lasttooltip = ls_tooltip
					ir_lastwidth   = lr_width
					if lr_width > li_width then
					else
						ls_tooltip = ''
					end if
				end if
			else
				ls_tooltip     = ''
				ir_lastwidth   = 0
				lr_width       = 0
			end if
			
			ll_posY  = long(adw_source.describe ("DataWindow.Header.Height"))
			ll_first = long(adw_source.describe ("DataWindow.FirstRowOnPage"))
			for ll_back = ll_first to ll_row
				if not ib_haygroupby and ll_back = ll_row then exit
				ls_evaluate = "'RowHeight()'," + string(ll_back)
				ls_Describe = 'Evaluate(' +  ls_evaluate + ')'
				ll_posy     = ll_posY + long(adw_source.describe (ls_describe))
			next

			if ib_haygroupby then
				choose case is_key
					case 'OTDET', 'CITADET'
						ll_posy = ll_posy - 32
					case else
						ll_posy = ll_posy - 16
				end choose
				if ypos - ll_posy > 16 then ll_posy = ll_posy + 16
			end if

			if ls_tooltip > '' then
				st_tooltip.X       = PixelsToUnits (long(adw_source.describe(ls_objectname + '.X')) - 2 - il_scrollpos,XPixelsToUnits!) //- il_scrollpos
				if is_key = 'OTDET' or is_key = 'CITADET' then
					st_tooltip.Y    = of_calc_tooltipposition (adw_source, ll_row) + adw_source.Y
					if ls_objectname = 'intervencion_comp' then				
						ls_condi_comp	= adw_source.GetITemString (ll_row,'condi_comp')
						choose case ls_condi_comp
							case 'sss'
								st_tooltip.Y = st_tooltip.Y + PixelsToUnits (16, YPixelsToUnits!)
							case 'nns'
								st_tooltip.Y = st_tooltip.Y + PixelsToUnits (16, YPixelsToUnits!)
						end choose
					end if
				else
					st_tooltip.Y    = PixelsToUnits (ll_posy, YPixelsToUnits!) + adw_source.Y - 4
				end if
				st_tooltip.text    = ' ' + ls_tooltip
				ls_2               = gnv_app.inv_string.of_globalreplace(ls_tooltip,' ','')
				li_cuantos         = truncate(len(ls_2) * 0.25,0)
				li_cuantos         = PixelsToUnits (li_cuantos,XPixelsToUnits!) + 10
				st_tooltip.width   = PixelsToUnits (li_widthtext, XPixelsToUnits!) + li_cuantos + 16
				st_tooltip.tag   = 'TRANSLATE=N'                 +&
										';ROW=' + string(ll_row)       +&
										';COLUMNNAME=' + ls_objectname +&
										';XPOS=' + string(xpos)        +&
										';YPOS=' + string(ypos)
				idw_show           = adw_source
				st_tooltip.visible = true
				is_columntooltip   = ls_objectname
			else
				if st_tooltip.visible then
					st_tooltip.visible = false
				end if
			end if

			ii_lasttooltip	= ii_tooltip	// IPS: 17.05.2006 - 13911608044 - Parada Intervencion
			choose case ls_objectname				
				case 'groupby_comp','tooltip','matric','r_aviso','fechaperturax','fechatarea','desversion','intervencion_comp'
					ii_tooltip = 1
					of_hide_dwdatoscli()
					il_last_row_tooltip = 0
				case '','datawindow','detail'
					ii_tooltip = 0
					of_hide_dwdatoscli()
					st_tooltip.visible  = false
					il_last_row_tooltip = 0	
				// Ref.: 21980853234 - jdm - 22/05/2008 - Se añade p_acabada
				case 'nada_t','l_1','l_2','lv_0','lv_1','lv_2','lv_3','lv_4','lv_5','lv_6','lv_7','lv_8','lv_9',&
					  'p_cortesia','p_garantia','p_piezaenespera','p_locked','vienedeunacita',&
					  'estado_ot','estado_det','entregaprevfecha_comp','fechallegada_comp',&
					  'ttotintervencion_tiempoasignado_comp','tiempopasado_comp',&
					  'tiempopasado_t','ttotintervencion_tiempoasignado_t','numcita',&
					  'bitmap_cortesia', 'sumtiempoasignado_comp', "p_acabada"	//,'numprisma'
					ii_tooltip = 0
					of_hide_dwdatoscli()
					st_tooltip.visible  = false
					il_last_row_tooltip = 0
				case 'numot'
					ii_tooltip = 2
					of_hide_dwdatoscli()
					if ll_row > 0 and (adw_source = dw_show30 or adw_source = dw_s30det) then
						if il_last_row_tooltip = ll_row then
							lb_visible     = ib_viewtooltip
						else
							lb_visible     = true
							ib_viewtooltip = false
//							il_last_row_tooltip = ll_row
							inv_timer.stop()
							inv_timer.start(0.35)
						end if
						if lb_visible then
							if ll_row = il_last_row_tooltip and dw_datosparada.visible then
								il_last_xpos = xpos
								il_last_ypos = ypos
								return
							end if
							if adw_source.GetItemNumber(ll_row,'intervenparada') > 0 then
								if il_last_row_tooltip = ll_row then
								else
									il_last_row_tooltip = ll_row
									ls_emp        = adw_source.GetItemString (ll_row,'emp')
									ll_numinterno = adw_source.GetItemNumber (ll_row,'numinterno')
									sqlca.of_retrieve_begin()
									ll_rows = dw_datosparada.retrieve (ls_emp,ll_numinterno)
									sqlca.of_retrieve_end()
									if dw_datosparada.RowCount() > 0 then
										dw_datosparada.Height = ll_rows * 124 + 76
										if ll_rows > 0 then
											dw_datosparada.X = PixelsToUnits (long(adw_source.describe('numot.X')) - il_scrollpos,XPixelsToUnits!) +&
																	 PixelsToUnits (long(adw_source.describe('numot.width')),XPixelsToUnits!) - dw_datosparada.width
											if dw_datosparada.X < 0 then dw_datosparada.X = 0
											if is_key = 'OTDET' then
												dw_datosparada.Y = of_calc_tooltipposition (dw_s30det, ll_row) + adw_source.Y - dw_datosparada.height
											else
												if ll_row = ll_first then
													dw_datosparada.Y = PixelsToUnits (ll_posy + 18, YPixelsToUnits!) + adw_source.Y
												else
													dw_datosparada.Y = PixelsToUnits (ll_posy, YPixelsToUnits!) - (ll_rows * 124) + 36
												end if
											end if
											if dw_datosparada.visible then
											else
												of_hide_dwdatoscli(true)
											end if
											dw_datosparada.visible = true
											if dw_datosparada.y < 0 or dw_datosparada.x < 0 or &
												(dw_datosparada.y + dw_datosparada.height > adw_source.Y + adw_source.height) or &
												(dw_datosparada.x + dw_datosparada.width  > adw_source.X + adw_source.width) then
												if isvalid(iw_datoscli) then
												else
													Open (w_base_tooltip)
													iw_datoscli = w_base_tooltip
												end if
												iw_datoscli.of_show_tooltip (dw_datosparada, handle(this))
											end if
										end if	
									else
										if dw_datosparada.visible then dw_datosparada.visible = false
									end if
								end if
							else
								if dw_datosparada.visible then dw_datosparada.visible = false
							end if
						end if
					else
						of_hide_dwdatoscli()
						il_last_row_tooltip = 0
					end if
				case 'ttotcab_haysms'		// IPS: 10.07.2006 - SMS
					ii_tooltip = 3
					of_hide_dwdatoscli()
					if ll_row > 0 and adw_source <> dw_show20 then
						choose case idw_show.GetItemNumber (ll_row,'ttotcab_haysms')
							case 1
								ldw_datos = dw_datossms
							case 2
								ldw_datos = dw_datosmail
						end choose
						if idw_show.GetItemNumber (ll_row,'ttotcab_haysms') > 0 and isvalid(ldw_datos) then
							if il_last_row_tooltip = ll_row then
								lb_visible     = ib_viewtooltip
							else
								lb_visible     = true
								ib_viewtooltip = false
								inv_timer.stop()
								inv_timer.start(0.35)
							end if
							if lb_visible then
								if ll_row = il_last_row_tooltip and ldw_datos.visible then
									il_last_xpos = xpos
									il_last_ypos = ypos
									return
								end if
								if il_last_row_tooltip = ll_row then
								else
									il_last_row_tooltip = ll_row
									ls_emp        = adw_source.GetItemString (ll_row,'emp')
									ll_numinterno = adw_source.GetItemNumber (ll_row,'numinterno')
									ls_key        = is_key
									if is_key = 'OTDET' then ls_key = 'OT'
									sqlca.of_retrieve_begin()
									ll_rows = ldw_datos.Retrieve (ls_emp,ll_numinterno, ls_key)
									sqlca.of_retrieve_end()
									if ldw_datos.RowCount() > 0 then
										ls_evaluate      = "'RowHeight()',1"
										ls_Describe      = 'Evaluate(' +  ls_evaluate + ')'
										ldw_datos.Height = long(ldw_datos.Describe (ls_describe)) + long(ldw_datos.describe('Datawindow.Header.Height')) + 24
										if ll_rows > 0 then
											ldw_datos.X = PixelsToUnits (long(adw_source.describe('ttotcab_haysms.X')) - il_scrollpos,XPixelsToUnits!) +&
															  PixelsToUnits (long(adw_source.describe('ttotcab_haysms.width')),XPixelsToUnits!) - ldw_datos.width
											if ldw_datos.X < 0 then ldw_datos.X = 0
											if is_key = 'OTDET' then
												ldw_datos.Y = of_calc_tooltipposition (dw_s30det, ll_row) + adw_source.Y - ldw_datos.height
											else
												if ll_row = ll_first then
													ldw_datos.Y = PixelsToUnits (ll_posy + 18, YPixelsToUnits!) + adw_source.Y
												else
													ldw_datos.Y = PixelsToUnits (ll_posy + 18, YPixelsToUnits!) + adw_source.Y
												end if
											end if
											of_hide_dwdatoscli(true)	//JMR:17.7.2013 40801435244
											dw_datoscli.visible = false
											ldw_datos.visible = true
											if ldw_datos.y < 0 or ldw_datos.x < 0 or &
												(ldw_datos.y + ldw_datos.height > adw_source.Y + adw_source.height) or &
												(ldw_datos.x + ldw_datos.width  > adw_source.X + adw_source.width) then
												if isvalid(iw_datoscli) then
												else
													Open (w_base_tooltip)
													iw_datoscli = w_base_tooltip
												end if
												iw_datoscli.of_show_tooltip (ldw_datos, handle(this))
											end if
										end if
									else
										if ldw_datos.visible then ldw_datos.visible = false
									end if
								end if
							end if
						end if
					else
						of_hide_dwdatoscli()
						il_last_row_tooltip = 0
					end if
				case 'p_fichajeencurso','p_fichajepdte'
					// JMR: 15.02.2007 - 17700050050 - Fichajes incompletos
					ii_tooltip = 4
					of_hide_dwdatoscli()
					if ll_row > 0 and adw_source = dw_s30det then
						if il_last_row_tooltip = ll_row then
							lb_visible     = ib_viewtooltip
						else
							lb_visible     = true
							ib_viewtooltip = false
							inv_timer.stop()
							inv_timer.start(0.35)
						end if
						if lb_visible then
							if ll_row = il_last_row_tooltip and dw_datostiempo.visible then
								il_last_xpos = xpos
								il_last_ypos = ypos
								return
							end if
							if il_last_row_tooltip = ll_row then
							else
								il_last_row_tooltip = ll_row
								ls_emp          = adw_source.GetItemString (ll_row,'emp')
								ll_numinterno   = adw_source.GetItemNumber (ll_row,'numinterno')
								ll_intervencion = adw_source.GetItemNumber (ll_row,'ttotintervencion_intervencion')
								sqlca.of_retrieve_begin()
								ll_rows = dw_datostiempo.Retrieve (ls_emp,ll_numinterno,ll_intervencion)
								sqlca.of_retrieve_end()
								if dw_datostiempo.RowCount() > 0 then
									if ll_rows > 0 then
										ll_rowy = of_calc_tooltipposition (dw_s30det, ll_row) + adw_source.Y - dw_datostiempo.height
										choose case adw_source.GetItemString (ll_row,'condi_comp')
											case 'sss'
												ll_rowy = ll_rowy + PixelsToUnits (16,YPixelsToUnits!)
											case 'nns'
												ll_rowy = ll_rowy + PixelsToUnits (16,YPixelsToUnits!)
										end choose
										dw_datostiempo.Y       = ll_rowy
										dw_datostiempo.visible = true
										if dw_datostiempo.y < 0 or dw_datostiempo.x < 0 or &
											(dw_datostiempo.y + dw_datostiempo.height > adw_source.Y + adw_source.height) or &
											(dw_datostiempo.x + dw_datostiempo.width  > adw_source.X + adw_source.width) then
											if isvalid(iw_datoscli) then
											else
												Open (w_base_tooltip)
												iw_datoscli = w_base_tooltip
											end if
											iw_datoscli.of_show_tooltip (dw_datostiempo, handle(this))
										end if
									end if
								else
									if dw_datostiempo.visible then dw_datostiempo.visible = false
								end if
							end if
						end if
					else
						of_hide_dwdatoscli()
						il_last_row_tooltip = 0
					end if
				case else
					il_last_xpos = xpos
					il_last_ypos = ypos

					// IPS: 17.05.2006 - 13911608044 - Parada Intervencion
					ii_tooltip = 1
					of_hide_dwdatoscli()
					//
					if ll_row > 0 then
						il_last_row_tooltip = ll_row
						ls_tooltip = adw_source.describe('razonx.expression')
						ls_tooltip = 'evaluate("' + ls_tooltip + '",' + string(ll_row) + ')'
						ls_tooltip = trim(adw_source.describe(ls_tooltip))
						choose case adw_source
							case dw_show10
								ls_numero = string(adw_source.GetItemNumber(ll_row,'anocita')) + '/' +&
												string(adw_source.GetItemNumber(ll_row,'numcita')) + ' - '
							case dw_show20
								ls_numero = string(adw_source.GetItemNumber(ll_row,'anopresup')) + '/' +&
												string(adw_source.GetItemNumber(ll_row,'numpresup')) + ' - '
							case dw_show30
								ls_numero = string(adw_source.GetItemNumber(ll_row,'anoot')) + '/' +&
												string(adw_source.GetItemNumber(ll_row,'numot')) + ' - '
							case dw_s30det
								ls_numero = string(adw_source.GetItemNumber(ll_row,'anoot')) + '/' +&
												string(adw_source.GetItemNumber(ll_row,'numot')) + ' - '
							case dw_s10det
								ls_numero = string(adw_source.GetItemNumber(ll_row,'anocita')) + '/' +&
												string(adw_source.GetItemNumber(ll_row,'numcita')) + ' - '
						end choose
						if isnull(ls_numero) then ls_numero = ''
						ls_tooltip = ls_numero + ls_tooltip
						dw_datoscli.SetItem (1,'razonx'		,ls_tooltip)
						dw_datoscli.SetItem (1,'numtel1'		,adw_source.GetItemString(ll_row,'numtel1'))
						dw_datoscli.SetItem (1,'numtel2'		,adw_source.GetItemString(ll_row,'numtel2'))
						dw_datoscli.SetItem (1,'numgsm' 		,adw_source.GetItemString(ll_row,'numgsm' ))
						dw_datoscli.SetItem (1,'numgsmpro' 	,adw_source.GetItemString(ll_row,'numgsmpro' ))		// FAB - 38151654310 - 22/03/2013 
						if ls_objectname = 'sinfechallegada_t' then
							ll_X = PixelsToUnits (long(adw_source.describe('numprisma.X')) - 2 - il_scrollpos,XPixelsToUnits!) //- il_scrollpos
						else
							ll_X = PixelsToUnits (long(adw_source.describe(ls_objectname + '.X')) - 2 - il_scrollpos,XPixelsToUnits!) //- il_scrollpos
						end if
						if is_key = 'OTDET' then
							ll_Y = of_calc_tooltipposition (dw_s30det, ll_row) + adw_source.Y - dw_datoscli.height
						elseif is_key = 'CITADET' then
							ll_Y = of_calc_tooltipposition (dw_s10det, ll_row) + adw_source.Y - dw_datoscli.height
						else
							if ll_row = ll_first then
								ll_Y = PixelsToUnits (ll_posy + 18, YPixelsToUnits!) + adw_source.Y
							else
								ll_Y = PixelsToUnits (ll_posy, YPixelsToUnits!) - 154
							end if
						end if
						dw_datoscli.X = ll_x
						dw_datoscli.Y = ll_y
						event ue_parentnotify ('SHOW_DATOSCLI=SHOW')
					end if
			end choose

		case 'HEADER'
			il_last_row_tooltip = 0
			of_hide_dwdatoscli()
			is_currentcolumn  = ''
			if ib_haygroupby then
				ls_name2 = ls_ObjectName
				if ls_ObjectName > '' then
					adw_source.Object.DataWindow.Pointer = 'Arrow!'
					SetPointer(Arrow!)
					is_currentcolumn   = ls_ObjectName
					is_columnsplitting = ls_ObjectName
					il_antxpos         = xpos
				else
					adw_source.Object.DataWindow.Pointer = '..\recursos\cur\ve_sizec.CUR'
					if is_columnsplitting > '' then
						if il_antxpos > xpos then
							ib_columnasiguiente = true
						else
							ib_columnasiguiente = false
						end if
					end if
				end if
			end if
			choose case adw_source
				case dw_show30
					inv_Tooltip.SetTipText(adw_source,ii_dwID[3],'')
					il_last_row_mousemove = -1
				case dw_s30det
					inv_Tooltip.SetTipText(adw_source,ii_dwID[4],'')
					il_last_row_mousemove = -1
			end choose
		case else
			of_hide_dwdatoscli()
			adw_source.modify ('destroy r_source')
			adw_source.Object.DataWindow.Pointer = 'Arrow!'
			SetPointer(Arrow!)
			choose case adw_source
				case dw_show30
					inv_Tooltip.SetTipText(adw_source,ii_dwID[3],'')
				case dw_s30det
					inv_Tooltip.SetTipText(adw_source,ii_dwID[4],'')
			end choose
			il_last_row_mousemove = -1
			is_columnsplitting  = ''
	end choose
end if

il_last_xpos = xpos
il_last_ypos = ypos
ii_lasttooltip	= ii_tooltip

end subroutine

public subroutine of_hide_dwdatoscli ();of_hide_dwdatoscli (false)

end subroutine

public subroutine of_dragdrop ();// #38281200049#
sqlca.of_verifytrans_outside('u_calendar_ot.of_dragdrop.1')
inv_manager.of_dragdrop (ii_dragid)
// #38281200049#
sqlca.of_verifytrans_outside('u_calendar_ot.of_dragdrop.2')
	
Event ue_parentnotify ('CLICKONROW')
//of_getrow (true)
ib_ignoremousemove = false

end subroutine

public subroutine of_refresh_cita (long al_tarea, long al_numinterno);String ls_emp
String ls_taller

Long   ll_tarea
Long   ll_row
Long	 ll_numinterno

u_dw	ldw

if isvalid(this) then
else
	return
end if

if isvalid(this) then
else
	return
end if

choose case is_key
	case 'CITA', 'CITADET'
		ib_retrieving = true
		SetRedraw(false)

		if is_key = 'CITA' 		then ldw = dw_show10
		if is_key = 'CITADET' 	then ldw = dw_s10det

		if al_tarea > 0 then
			ll_tarea = al_tarea
		else
			if al_numinterno > 0 then
				ll_numinterno = al_numinterno
			else
				ll_row = ldw.GetRow()
				if ll_row > 0 then
					ll_tarea      = ldw.GetItemNumber (ll_row,'Tarea')
					ll_numinterno = ldw.GetItemNumber (ll_row,'NumInterno')
				end if
			end if
		end if

		/////////////////////////

		of_changevista()

		/////////////////////////

		if ll_numinterno > 0 then
			ll_row = ldw.of_find('numinterno = ' + string(ll_numinterno))
			if ll_row > 0 then
				ldw.ScrollToRow (ll_row)
			end if
		end if

		of_Scrolltotarea(ll_tarea)
		ib_retrieving = false
		SetRedraw(true)
		ldw.inv_flatscrollbar.of_init(ldw)
end choose

end subroutine

public subroutine of_repartirancho (u_dw adw_source);Long		ll_width
Long		ll_width2
Long		ll_width3
Long		ll_x2

Integer	li_count
Integer	li_visible

String	ls_modify
String	ls_header
String	ls_lista[]

Boolean	lb_reajustar

of_get_columnlist()

choose case adw_source
	case dw_show10; ls_lista = is_listacolumn10
	case dw_show20; ls_lista = is_listacolumn20
	case else     ; return
end choose

adw_source.SetRedraw(false)

for li_count = 1 to upperbound(ls_lista)
	choose case ls_lista[li_count]
		case 'razonx'
			li_visible++
		case else
			if left(ls_lista[li_count],3) = 'lv_' then
			else
				li_visible++
			end if
	end choose
next

ll_width  = UnitsToPixels(adw_source.width,XUnitsToPixels!) + 4
if (long(adw_source.describe('Datawindow.LastRowOnPage')) - &
	 long(adw_source.describe('Datawindow.FirstRowOnPage')) + 1) < adw_source.RowCount() then
	ll_width = ll_width - 16
end if

ll_width2 = UnitsToPixels(adw_source.width,XUnitsToPixels!) / li_visible
ll_width3 = ll_width - (ll_width2 * li_visible)
ll_x2     = 2

for li_count = 1 to upperbound(ls_lista)
	lb_reajustar = false
	choose case ls_lista[li_count]
		case 'razonx'
			lb_reajustar = true
		case else
			if left(ls_lista[li_count],3) = 'lv_' then
			else
				lb_reajustar = true
			end if
	end choose
	if lb_reajustar then
		choose case ls_lista[li_count]
			case 'fechaperturax'; ls_header = 'fechaaperturaot_t'
			case else           ; ls_header = ls_lista[li_count] + '_t'
		end choose
		ll_width  = ll_width - (ll_width2 + ll_width3) - 3
		ls_modify += ls_lista[li_count] + '.x="'     + string(ll_x2)                 + '" '
		ls_modify += ls_lista[li_count] + '.width="' + string(ll_width2 + ll_width3) + '" '
		ls_modify += ls_header          + '.x="'     + string(ll_x2)                 + '" '
		choose case ls_lista[li_count]
			case 'numcita','numpresup'
				ls_modify += ls_header + '.width="' + string(ll_width2 + ll_width3)     + '" '
			case else
				ls_modify += ls_header + '.width="' + string(ll_width2 + ll_width3 - 2) + '" '
		end choose
		ll_x2     = ll_x2 + ll_width2 + ll_width3
		ll_width3 = 0
	end if
next

adw_source.modify (ls_modify)

end subroutine

public subroutine of_resizecolumns (u_dw adw_source, long al_widthrazonx);if (long(adw_source.describe('Datawindow.LastRowOnPage')) - &
	 long(adw_source.describe('Datawindow.FirstRowOnPage')) + 1) < adw_source.RowCount() then
	adw_source.inv_flatscrollbar.of_init (adw_source)
else
	adw_source.inv_flatscrollbar.of_hide (adw_source)
end if

//post of_getrow ( adw_source, adw_source.GetRow()) //RLV:19881155075:21.09.2007

return

/*-------------------------------------------------------------------------------------------------------------
//Long		ll_width
//Long		ll_width2
//Long		ll_x
//
//Integer	li_vertical
//Integer	li_count
//
//String	ls_lista[]
//String	ls_header
//
//Boolean	lb_reajustar

ll_width = al_widthrazonx
if (long(adw_source.describe('Datawindow.LastRowOnPage')) - &
	 long(adw_source.describe('Datawindow.FirstRowOnPage')) + 1) < adw_source.RowCount() then
	ll_width = ll_width - 16
end if

choose case adw_source
	case dw_show10
		ls_lista  = is_listacolumn10
	case dw_show20
		ls_lista  = is_listacolumn20
	case else     ; return
end choose

ll_x = 2

for li_count = 1 to upperbound(ls_lista)
	lb_reajustar = false
	choose case ls_lista[li_count]
		case 'razonx'
			lb_reajustar = true
		case else
			if left(ls_lista[li_count],3) = 'lv_' then
			else
				lb_reajustar = true
			end if
	end choose
	if lb_reajustar then
		if ls_lista[li_count] = 'fechaperturax' then
			ls_header = 'fechaaperturaot_t'
		else
			ls_header = ls_lista[li_count] + '_t'
		end if
		adw_source.modify(ls_lista[li_count] + '.X="' + string(ll_x) + '"')
		adw_source.modify(ls_header          + '.X="' + string(ll_x) + '"')
		choose case ls_lista[li_count]
			case 'razonx'
				adw_source.modify('razonx.width="'   + string(ll_width    ) + '"')
				adw_source.modify('razonx_t.width="' + string(ll_width - 2) + '"')
			case else
				ll_width2 = long(adw_source.describe(ls_lista[li_count] + '.width'))
				choose case ls_lista[li_count]
					case 'numcita','numpresup'
						ll_width2 = ll_width2 + 4
				end choose
				adw_source.modify(ls_header + '.width="' + string(ll_width2 - 2) + '"')
		end choose
		ll_x = long(adw_source.describe(ls_lista[li_count] + '.X')) + long(adw_source.describe(ls_lista[li_count] + '.width'))
		li_vertical++
		if li_vertical = 4 then ll_x = ll_x + 4
		adw_source.modify('lv_' + string(li_vertical) + '.X1="' + string(ll_x - 2) + '"')
		adw_source.modify('lv_' + string(li_vertical) + '.X2="' + string(ll_x - 2) + '"')
	end if
next

ll_width = ll_x

adw_source.modify('groupby_comp.width="' + string(ll_width - 2) + '"')
*/
end subroutine

public function long of_calcular_width (u_dw adw_source);Long		ll_width
Integer	li_count
String	ls_lista[]

choose case adw_source
	case dw_show10; ls_lista = is_listacolumn10
	case dw_show20; ls_lista = is_listacolumn20
	case else     ; return 0
end choose

ll_width = UnitsToPixels(adw_source.width,XUnitsToPixels!)

for li_count = 1 to upperbound(ls_lista)
	choose case ls_lista[li_count]
		case 'razonx'	
		case else
			if pos(adw_source.describe(ls_lista[li_count] + '.tag'),'NOWIDTH=Y') > 0 then
			else
				if left(ls_lista[li_count],3) = 'lv_' then
				else
					ll_width = ll_width - long(adw_source.describe(ls_lista[li_count] + '.width')) - 3
				end if
			end if
	end choose
next

return ll_width
end function

public subroutine of_repartirancho ();u_dw	ldw

Long	ll_width

choose case is_key
	case 'PRESUP'
		ldw = dw_show20
	case else
		return
end choose

of_repartirancho (ldw)
ll_width = long(ldw.describe('razonx.width'))
of_resizecolumns (ldw, ll_width)
ldw.SetRedraw(true)

end subroutine

public subroutine of_set_orderby (string as_orderby, boolean ab_resort);// 0000312  SJP  12-3-2014  Reescritura de la función para corregir tratamiento incorrecto de ordenaciones
//                          y para simplificarla. La función original aparece en SubVersion, revisión 8813

String ls_criterio_agrupacion
string ls_columnas_orden
String ls_sorted
String ls_columnaflecha
String ls_letra

if ab_resort then
else
	choose case lower (as_orderby)
		case 'fecha','matric','cliente','numot'
			is_orderbyvalue = as_orderby
			if ii_ascending = 1 then
				il_lastdescen = 0
			else
				il_lastdescen = 1
			end if
		case else
			if is_lastsorted = lower(as_orderby) then
				if il_lastdescen = 1 then
					il_lastdescen = 0
				else
					il_lastdescen = 1
				end if
			else
				il_lastdescen = 0
			end if
			if il_lastdescen = 1 then
				ii_ascending = 0
			else
				ii_ascending = 1
			end if
	end choose
end if

if ii_ascending = 1 then
	ls_letra = 'A'
else
	ls_letra = 'D'
end if


as_orderby = lower(as_orderby)



if not isvalid(idw_show) then  return
	
// Primero se obtienen las columnas que se utilizan para la ordenación; a continuación se agrega (por delante) el criterio de orden [si hay]
of_set_orderby_obtenercolumnas(idw_show, as_orderby, ls_letra, ref ls_columnas_orden, ref ls_sorted, ref ls_columnaflecha)
if ls_columnas_orden > '' then
	is_lastSorted = ls_sorted
end if


choose case lower(is_groupbyvalue)
	case 'nogroup'                  ; ls_criterio_agrupacion = ''
		
	case 'fecha'
		choose case idw_show
			case dw_show10, dw_s10det ; ls_criterio_agrupacion = 'tgagendatarea_iniciofecha'
			case dw_show20            ; ls_criterio_agrupacion = 'FechaPresup'
			case dw_show30, dw_s30det ; ls_criterio_agrupacion = 'Entregaprevfecha'
		end choose
	
	case is > ''                    ; ls_criterio_agrupacion = 'groupby'  // Valor por defecto

	case else                       ; ls_criterio_agrupacion = ''
end choose
if ls_criterio_agrupacion > '' then
	if ls_columnas_orden > '' then
		ls_columnas_orden = ls_criterio_agrupacion + ' A, ' + ls_columnas_orden
	else
		ls_columnas_orden = ls_criterio_agrupacion + ' A'
	end if
end if

if as_orderby = 'tooltip_t' and idw_show = dw_show20 then
else
	idw_show.of_set_arrowsort (ls_columnaflecha, il_lastdescen)
end if

idw_show.of_sort(ls_columnas_orden)
idw_show.GroupCalc()
	
if is_key = 'OTDET' then
	SetRedraw(false)
	ib_firsttimes30det = true
	of_calc_tooltipposition (dw_s30det, dw_s30det.RowCount())
	ib_firsttimes30det = false
end if

if is_key = 'CITADET' then
	SetRedraw(false)
	ib_firsttimes10det = true
	of_calc_tooltipposition (dw_s10det, dw_s10det.RowCount())
	ib_firsttimes10det = false
end if

if not ib_retrieving then
	SetRedraw(true)
end if


end subroutine

public function integer of_scrolltocita (long al_numinterno);boolean	lb_ok

Long		ll_find

u_dw	ldw

if is_key = 'CITA' 		then 
	ldw = dw_show10
	lb_ok = true
end if

if is_key = 'CITADET' 	then 
	ldw = dw_s10det
	lb_ok = true
end if

if lb_ok then
else
	return SUCCESS
end if

ll_find = ldw.of_find ('numinterno = ' + string(al_numinterno))

if ll_find > 0 then
	ldw.ScrollToRow (ll_find)
	return SUCCESS
end if

return FAILURE

end function

public subroutine of_set_detailcolor ();Long		ll_color_fondo
Long		ll_color_current

String	ls_expres
String	ls_expres10
String	ls_expres20

ll_color_fondo   = gf_get_color ('PANEL_FONDO') 
ll_color_current = gf_get_color ('PANEL_CURRENTROW') 
//ll_color_current = gf_get_color ('TRANS') 
//dw_show10.Modify ("DataWindow.Detail.Color='" + string(ll_color_fondo) +"~tif (CurrentRow() = GetRow(), "+string(ll_color_current)+", " +string(ll_color_fondo) + ")'")
//dw_show20.Modify ("DataWindow.Detail.Color='" + string(ll_color_fondo) +"~tif (CurrentRow() = GetRow(), "+string(ll_color_current)+", " +string(ll_color_fondo) + ")'")
//
////IPS:05.07.2006 - SMS 
//dw_show10.Modify ("ttotcab_haysms.Background.Color='" + string(ll_color_fondo) +"~tif (CurrentRow() = GetRow(), "+string(ll_color_current)+", " +string(ll_color_fondo) + ")'")
//dw_show20.Modify ("ttotcab_haysms.Background.Color='" + string(ll_color_fondo) +"~tif (CurrentRow() = GetRow(), "+string(ll_color_current)+", " +string(ll_color_fondo) + ")'")
//dw_show30.Modify ("ttotcab_haysms.Background.Color='" + string(ll_color_fondo) +"~tif (CurrentRow() = GetRow(), "+string(ll_color_current)+", " +string(ll_color_fondo) + ")'")
//
//dw_show30.Modify ("tooltip.Color='" + string(ll_color_fondo) +"~tif (CurrentRow() = GetRow(), "+string(ll_color_current)+", " +string(ll_color_fondo) + ")'")
//dw_s30det.Modify ("tooltip.Color='" + string(ll_color_fondo) +"~tif (CurrentRow() = GetRow(), "+string(ll_color_current)+", " +string(ll_color_fondo) + ")'")
//
dw_show10.Modify ("DataWindow.Detail.Color='" + string(ll_color_fondo) +"'")
dw_show20.Modify ("DataWindow.Detail.Color='" + string(ll_color_fondo) +"'")
dw_show10.Modify ("ttotcab_haysms.Background.Color='" + string(ll_color_fondo) +"'")
dw_show20.Modify ("ttotcab_haysms.Background.Color='" + string(ll_color_fondo) +"'")
dw_show30.Modify ("ttotcab_haysms.Background.Color='" + string(ll_color_fondo) +"'")
dw_show30.Modify ("tooltip.Color='" + string(ll_color_fondo) +"'")
dw_s30det.Modify ("tooltip.Color='" + string(ll_color_fondo) +"'")

dw_s10det.Modify ("DataWindow.Detail.Color='" + string(ll_color_fondo) +"'")
dw_s10det.Modify ("ttotcab_haysms.Background.Color='" + string(ll_color_fondo) +"'")


//entregaprevfecha > today --> normal
//entregaprevfecha = today --> color1
//entregaprevfecha < today --> color2


ls_expres = ''
ls_expres = ls_expres + string(ll_color_fondo) 
ls_expres = ls_expres + "~t"
//ls_expres = ls_expres + "if (CurrentRow() = GetRow(), "
//ls_expres = ls_expres + string(ll_color_current)
//ls_expres = ls_expres + "," 
ls_expres = ls_expres + "if (isnull(entregaprevfecha) or entregaprevfecha > date(today())"
ls_expres = ls_expres + "," 
ls_expres = ls_expres + string(ll_color_fondo)
ls_expres = ls_expres + "," 
ls_expres = ls_expres + "if (entregaprevfecha = date(today())"
ls_expres = ls_expres + "," 
ls_expres = ls_expres + string(gf_get_color('PLANSTOCK20'))
ls_expres = ls_expres + "," 
ls_expres = ls_expres + "if (entregaprevfecha < date(today())"
ls_expres = ls_expres + "," 
ls_expres = ls_expres + string(gf_get_color('PLANSTOCK10'))
ls_expres = ls_expres + "," 
ls_expres = ls_expres + string(ll_color_fondo)
//ls_expres = ls_expres + ")"
ls_expres = ls_expres + ")"
ls_expres = ls_expres + ")"
ls_expres = ls_expres + ")"



dw_show30.Modify ("DataWindow.Detail.Color='" + ls_expres + "'")
dw_s30det.Modify ("DataWindow.Detail.Color='" + ls_expres + "'")
//IPS:05.07.2006 - SMS 
dw_show30.Modify ("ttotcab_haysms.Background.Color='" + ls_expres + "'")
dw_show30.Modify ("tooltip.Color='" + ls_expres + "'")
dw_s30det.Modify ("tooltip.Color='" + ls_expres + "'")

ls_expres20 = ''
ls_expres20 = ls_expres20 + string(ll_color_fondo) 
ls_expres20 = ls_expres20 + "~t"
//ls_expres20 = ls_expres20 + "if (CurrentRow() = GetRow(), "
//ls_expres20 = ls_expres20 + string(ll_color_current)
//ls_expres20 = ls_expres20 + "," 
ls_expres20 = ls_expres20 + "if (numot > 0"
ls_expres20 = ls_expres20 + "," 
ls_expres20 = ls_expres20 + string(gf_get_color('PLANSTOCK10'))
ls_expres20 = ls_expres20 + "," 
ls_expres20 = ls_expres20 + string(ll_color_fondo)
ls_expres20 = ls_expres20 + ")"
//ls_expres20 = ls_expres20 + ")"


dw_show20.Modify ("DataWindow.Detail.Color='" + ls_expres20 + "'")
//IPS:05.07.2006 - SMS 
dw_show20.Modify ("ttotcab_haysms.Background.Color='" + ls_expres20 + "'")

ls_expres10 = ''
ls_expres10 = ls_expres10 + string(ll_color_fondo) 
ls_expres10 = ls_expres10 + "~t"
//ls_expres10 = ls_expres10 + "if (CurrentRow() = GetRow(), "
//ls_expres10 = ls_expres10 + string(ll_color_current)
//ls_expres10 = ls_expres10 + "," 
ls_expres10 = ls_expres10 + "if (isnull(tgagendatarea_iniciofecha) or tgagendatarea_iniciofecha > date(today())"
ls_expres10 = ls_expres10 + "," 
ls_expres10 = ls_expres10 + string(ll_color_fondo)
ls_expres10 = ls_expres10 + "," 
ls_expres10 = ls_expres10 + "if (tgagendatarea_iniciofecha = date(today())"
ls_expres10 = ls_expres10 + "," 
ls_expres10 = ls_expres10 + string(gf_get_color('PLANSTOCK20'))
ls_expres10 = ls_expres10 + "," 
ls_expres10 = ls_expres10 + "if (tgagendatarea_iniciofecha < date(today())"
ls_expres10 = ls_expres10 + "," 
ls_expres10 = ls_expres10 + string(gf_get_color('PLANSTOCK10'))
ls_expres10 = ls_expres10 + "," 
ls_expres10 = ls_expres10 + string(ll_color_fondo)
//ls_expres10 = ls_expres10 + ")"
ls_expres10 = ls_expres10 + ")"
ls_expres10 = ls_expres10 + ")"
ls_expres10 = ls_expres10 + ")"



dw_show10.Modify ("DataWindow.Detail.Color='" + ls_expres10 + "'")
//IPS:05.07.2006 - SMS 
dw_show10.Modify ("ttotcab_haysms.Background.Color='" + ls_expres10 + "'")

// FAB - 5/12/2007 20661053029
dw_s10det.Modify ("DataWindow.Detail.Color='" + ls_expres10 + "'")
dw_s10det.Modify ("ttotcab_haysms.Background.Color='" + ls_expres10 + "'")
end subroutine

public function integer of_new ();n_cst_manto_param lnv_manto_param
window	lw_param
pointer	old_pointer 

String	ls_emp
String	ls_emp2

long   	ll_codigo
long   	ll_row
long   	ll_item
Long   	ll_numinterno
Long   	ll_numinterno2

integer 	li_from				// FAB - 36551114409 - 31/01/2013 

Boolean	lb_seguir
Boolean	lb_cita
Boolean	lb_presup
Boolean	lb_ot				// FAB - 33411613244 - 06/07/2011  
Boolean	lb_huboReapertura	// FAB - 36551114409 - 31/01/2013 

///////////////////////////////////////////////////////////////////////////////////

inv_manager.of_getfocus(this)
inv_manager.of_set_bussy (true)
idw_show.SetFocus()

inv_manager.of_clicked (0,'',0)

ii_lasttooltip = 0
of_hide_dwdatoscli()

old_pointer = setpointer (hourglass!)	

lnv_manto_param = create n_cst_manto_param
lnv_manto_param.ii_action = lnv_manto_param.ACT_INSERT

lnv_manto_param.ia_param[1] = gnv_app.inv_empwrkmanager.is_empwrk
lnv_manto_param.ia_param[2] = 0

choose case is_key
	case 'CITA', 'CITADET'
		lnv_manto_param.ia_param[3] = 10
	case 'PRESUP'
		lnv_manto_param.ia_param[3] = 20
	case 'OT','OTDET'
		lnv_manto_param.ia_param[3] = 30
end choose

// FAB - 36551114409 - 31/01/2013 >>>>>>>>>>
inv_manager.of_set_notestimer(FALSE)
sqlca.of_verifytrans_outside('u_calendar_ot.of_new.1')
if isvalid(inv_ttotOpen) then
else
	inv_ttotOpen = create n_cst_ttot_open
end if

choose case is_key
	case 'CITA', 'CITADET'
		li_from	= inv_ttotOpen.OTCITA
	case 'PRESUP'
		li_from	= inv_ttotOpen.OTPRESUP
	case 'OT', 'OTDET'
		li_from	= inv_ttotOpen.OTCURSO
end choose

lnv_manto_param.is_tag = lnv_manto_param.is_tag + ';RECUPERARDOCUMOT=Y'		// Indicamos que queremos poder recuperar. En este caso SI que puede haber reaperturas
inv_ttotOpen.of_open_ot(ref lnv_manto_param, li_from, TRUE, ref lb_huboReapertura) 
sqlca.of_verifytrans_outside('u_calendar_ot.of_new.2')

// Ferran - 0000686 - 21/08/14
if upperbound(lnv_manto_param.ia_param) >= 9 then
	if lnv_manto_param.ia_param[9] = 1 then
		inv_manager.of_set_refreshcita(true)
		inv_manager.of_refresh_cita()
	end if
end if
//...

if lnv_manto_param.ii_result = lnv_manto_param.res_success then
	if lb_huboReapertura	then
		if pos(lnv_manto_param.is_tag, 'REAPERTURA=CITA') > 0 then
			event ue_parentnotify('RETRIEVE_CITA')
			event ue_parentnotify('RETRIEVE_OT')
		elseif pos(lnv_manto_param.is_tag, 'REAPERTURA=PRESUP') > 0 then
			ls_emp2        = string(lnv_manto_param.ia_param[1])
			ll_numinterno2 = long  (lnv_manto_param.ia_param[2])
			
			event ue_parentnotify('REPOSITION&CITA&PRESUP&' + ls_emp2 + '&' + string(ll_numinterno2))
			event ue_parentnotify('REPOSITION&OT&PRESUP&'   + ls_emp2 + '&' + string(ll_numinterno2))
		end if
	else
	// Apertura normal. No hay reaperturas de ot's
		Event ue_parentnotify ('CLICKONROW')
		ll_numinterno = lnv_manto_param.ia_param[2]
		choose case is_key
			case 'CITA', 'CITADET'
				inv_manager.Post of_refresh_cita(ll_numinterno)
			case 'OTDET'
				SetRedraw(false)
				of_changeVista()

				// FAB - 05/02/2008 - 21281234258. La función of_changevista oculta el ib_marcofoco poniendolo a false
				Event ue_parentnotify ('CLICKONROW')
				ll_row = idw_show.of_find('numinterno = ' + string(ll_numinterno))
				if ll_row > 0 then
					idw_show.ScrollToRow(ll_row)
				end if
				SetRedraw(true)
			case else
				ls_emp2        = string(lnv_manto_param.ia_param[1])
				ll_numinterno2 = long  (lnv_manto_param.ia_param[2])
				of_repositionrow (ls_emp2, ll_numinterno2)
		end choose
	end if
end if
// FAB - 36551114409 - 31/01/2013 <<<<<<<<<<

inv_manager.of_Garbage ()
inv_manager.of_set_notestimer(TRUE)

destroy (lnv_manto_param)

setpointer (old_pointer)
idw_show.SetFocus()
inv_manager.of_set_bussy (false)
if gnv_app.ib_closing then
else
	if isvalid (iuo_panel) then
		iuo_panel.of_broadcast_pending ()
	end if
end if

return 1
end function

public subroutine of_view_backorder ();n_cst_manto_param lnv_manto_param

Pointer old_pointer

inv_manager.of_clicked (0,'',0)
inv_manager.of_set_bussy (true)
old_pointer = setpointer (hourglass!)

lnv_manto_param = create n_cst_manto_param
lnv_manto_param.ia_param[1]  = gnv_app.inv_empwrkmanager.is_empwrk
lnv_manto_param.ia_param[2]  = gnv_app.inv_empwrkmanager.is_talwrk

// #38281200049#
sqlca.of_verifytrans_outside('u_calendar_ot.of_view_backorder.1')
OpenWithParm (w_consulta_backorder_ttot, lnv_manto_param)
// #38281200049#
sqlca.of_verifytrans_outside('u_calendar_ot.of_view_backorder.2')

destroy lnv_manto_param

inv_manager.of_set_notestimer(TRUE)
inv_manager.of_set_bussy (false)
setpointer (old_pointer)

end subroutine

public subroutine of_init_hoverbutton (ref u_hoverbutton auo_source, string as_picture, string as_hoverpicture, string as_tooltip);as_picture = '..\recursos\' + right(as_picture,3) + '\' + as_picture
as_tooltip = of_get_classtext ('LITERAL','TOOLTIP',as_tooltip)

if as_hoverpicture > '' then
	as_hoverpicture = '..\recursos\' + right(as_hoverpicture,3) + '\' + as_hoverpicture
else
	as_hoverpicture = as_picture
end if

auo_source.is_bitmap_normal   = gnv_app.inv_screen.of_getrecurso(as_picture)
auo_source.is_bitmap_hover    = auo_source.is_bitmap_normal
auo_source.is_bitmap_disabled = auo_source.is_bitmap_normal
auo_source.is_tooltip         = as_tooltip
auo_source.of_init()

end subroutine

public subroutine of_create_aux (ref n_ds ads_new, string as_dataobject);ads_new            = create n_ds
ads_new.DataObject = as_DataObject
ads_new.of_SetUpdateAble  (false)
ads_new.of_setTransObject (sqlca)

end subroutine

public subroutine of_show_backorder (long al_row);n_cst_manto_param	lnv_manto_param

Pointer	old_pointer

String	ls_emp
Long		ll_numinterno

if isvalid(ids_otinterven) then
else
	of_create_aux (ids_otinterven,'dw_main_ttotintervencion')
	of_create_aux (ids_otlinea   ,'dw_main_ttotlinea')
end if

if not dw_s30det.of_isvalidrow(al_row) then return

ls_emp        = dw_s30det.GetItemString(al_row,'emp')
ll_numinterno = dw_s30det.GetItemNumber(al_row,'numinterno')

sqlca.of_retrieve_begin()
ids_ttotcab.of_retrieve    (ls_emp,ll_numinterno)
ids_otlinea.of_retrieve    (ls_emp,ll_numinterno)
ids_otinterven.of_retrieve (ls_emp,ll_numinterno)
sqlca.of_retrieve_end()

of_calendar_popup_stop()
inv_manager.of_clicked (0,'',0)
inv_manager.of_set_bussy (true)
old_pointer = setpointer (hourglass!)

lnv_manto_param = create n_cst_manto_param
lnv_manto_param.ids_share[1] = ids_otlinea
lnv_manto_param.ids_share[2] = ids_otinterven
lnv_manto_param.ids_share[3] = ids_ttotcab
lnv_manto_param.ii_action    = lnv_manto_param.ACT_READ

// #38281200049#
sqlca.of_verifytrans_outside('u_calendar_ot.of_show_backorder.1')
OpenWithParm (w_manto_ttotrecambio, lnv_manto_param)
// #38281200049#
sqlca.of_verifytrans_outside('u_calendar_ot.of_show_backorder.2')


destroy lnv_manto_param

inv_manager.of_set_notestimer(TRUE)
inv_manager.of_set_bussy (false)
setpointer (old_pointer)

return

end subroutine

public function long of_calc_tooltipposition (ref u_dw adw_source, long al_row);////////////////////////////////////////////////////////////////////////////////////////////////
//
//		JMR, 14.2.2007: cálculo exacto del valor de la Y de la row, con 0 como la Y de la primera
//
//		Este cálculo se basa en calcular el espacio que queda entre rows cuando existe un
//		GroupBy en el datawindow. PB inserta espacios en blanco antes de cada row que quede
//		a caballo entre 2 páginas (hipotéticas) cuando monta el DW la primera vez (a cada
//		GroupCalc() en realidad). Esos espacios no se recalculan mientras se pagina arriba
//		o abajo, por lo que es fácil calcularlo pero relativamente costoso, puesto que hay que
//		hacerlo siempre desde la primera row del dw.
//
////////////////////////////////////////////////////////////////////////////////////////////////

long 		ll_rowY
Long		ll_firstonpage
Long		ll_row
Long		ll_altura
Long		ll_showheight
Long		ll_alturadetalle
Long		ll_alturatotal
Long		ll_alturatotal_ant
Long		ll_altura_gc
Long		ll_altura_res
Long		ll_fromthetop
Long		ll_max

String	ls_evaluate
String	ls_describe

ll_rowY          = 0
ll_firstonpage   = long(adw_source.object.DataWindow.FirstRowOnPage)

// Todos los cálculos se realizan en pixels, más exactos que las unidades PB

ll_showheight    = UnitsToPixels(adw_source.height,YUnitsToPixels!)
ll_altura_gc     = 0
ll_alturadetalle = ll_showheight &
						 - long(adw_source.object.datawindow.header.height) &
						 - long(adw_source.object.datawindow.footer.height) &
						 - 18 // altura del scrollbar horizontal!

if ib_firsttimes30det or ib_firsttimes10det then
	ll_max      = max (al_row, ll_firstonpage)
	ls_evaluate = "Evaluate('RowHeight()',"
	for ll_row = 1 to ll_max
//		ls_evaluate        = "'RowHeight()'," + string(ll_row)
//		ls_Describe        = 'Evaluate(' +  ls_evaluate + ')'
//		ll_altura          = long(adw_source.describe (ls_describe))

		ls_describe        = ls_evaluate + string(ll_row) + ')'
		ll_altura          = long(adw_source.describe (ls_describe))

		ll_alturatotal_ant = ll_alturatotal
		ll_alturatotal     = ll_alturatotal + ll_altura
		ll_fromthetop      = ll_fromthetop  + ll_altura
	
		if ll_row = 1 then
			ll_alturatotal = ll_alturatotal + ll_altura_gc
			ll_fromthetop  = ll_fromthetop  + ll_altura_gc
		else
			if adw_source.FindGroupchange(ll_row,1) = ll_row then
				ll_alturatotal = ll_alturatotal + ll_altura_gc
				ll_fromthetop  = ll_fromthetop  + ll_altura_gc
			end if
		end if
		if ll_alturatotal > ll_alturadetalle then
			ll_altura_res  = ll_alturadetalle - ll_alturatotal_ant
			ll_alturatotal = ll_altura_gc + ll_altura
		end if
	
		ll_fromthetop = ll_fromthetop  + ll_altura_res
		if adw_source.GetItemNumber (ll_row,'alturarow') > 0 then
		else
			of_set_avisotooltip (ll_row)
		end if
		adw_source.SetItem (ll_row,'alturarow'  ,ll_fromthetop)
		adw_source.SetItem (ll_row,'zonarelleno',0)
		if ll_row > 1 and ll_altura_res > 0 then
			adw_source.SetItem (ll_row - 1,'zonarelleno',ll_altura_res)
		end if

		ll_altura_res = 0
	next

	return 0
end if

////////////////////////////////////////////////////////////////////////////////////////////

if ll_firstonpage > 0 then
else
	return 0
end if

if ll_firstonpage = 1 then
	ll_rowy = adw_source.GetItemDecimal (al_row,'alturarow')
else
	ll_rowy = ll_rowy + adw_source.GetItemDecimal (al_row,'alturarow') &
							- adw_source.GetItemDecimal (ll_firstonpage - 1,'alturarow') &
							- adw_source.GetItemDecimal (ll_firstonpage - 1,'zonarelleno')
end if

ls_evaluate = "'RowHeight()'," + string(al_row)
ls_Describe = 'Evaluate(' +  ls_evaluate + ')'
ll_altura   = long(adw_source.describe (ls_describe))
ll_rowy     = ll_rowy - ll_altura

if adw_source.FindGroupchange(al_row,1) = al_row then
	ll_rowy = ll_rowy + 16
end if

/////////////////////////////////////////////////////////////////////////////////////////////////

// Se le añade la altura del header, para obtener el offset real desde la parte superior del dw

ll_rowy = ll_rowy + long(adw_source.object.datawindow.header.height)
ll_rowy = PixelsToUnits (ll_rowy,YPixelsToUnits!)

return ll_rowy
end function

public function integer of_open_mecanicos ();// IPS: 06.03.2007 - 17921155263
n_cst_manto_param		lnv_param

inv_manager.of_set_bussy (true)
lnv_param = create n_cst_manto_param

// #38281200049#
sqlca.of_verifytrans_outside('u_calendar_ot.of_open_mecanicos.1')
OpenWithParm(w_consulta_ttmecanico_taller,lnv_param)
// #38281200049#
sqlca.of_verifytrans_outside('u_calendar_ot.of_open_mecanicos.2')

if isValid(lnv_param) then destroy lnv_param
inv_manager.of_set_bussy (false)
return SUCCESS



end function

public subroutine of_lbuttonup ();if ib_splitting then
	ib_dragflag        = false
	ib_splitting       = false
	is_columnsplitting = ''
	ib_nost_tooltip    = false
	
	idw_show.modify ('lineavert.visible="0"')
end if
end subroutine

protected function integer of_hide_popup ();// Función que esconde el popup si esta visible, retorna 1 si lo esconde 0 si no
// Ref.: 18741556467 - jdm - 22/05/2007

integer li_ret =0

if isvalid(inv_plancortesia_popup) then
	inv_plancortesia_popup.of_stop()
	li_ret=1
end if

return li_ret

end function

protected function integer of_prepare_popup (long al_row);return of_prepare_popup( al_row, dw_show10)

end function

public subroutine of_init_marco (datawindow adw_source, long al_row);Boolean 	lb_scroll
String 	ls_create
String 	ls_evaluate
String 	ls_describe
String	ls_marco
Long   	ll_posw
Long   	ll_posh
Long   	ll_posX
Long   	ll_PosY
Long   	ll_back
Long   	ll_first
Long   	ll_last
Long   	ll_firstpage
Long   	ll_lastpage
Long	 	ll_totalheight

if isvalid (adw_source) then
else
	return
end if


ll_posw   = adw_source.Width
ll_posh   = adw_source.height
ll_posw   = UnitsToPixels (ll_posw,XUnitsToPixels!)
ll_first  = long (adw_source.Describe ("DataWindow.FirstRowOnPage"))
ll_last   = long (adw_source.Describe ("DataWindow.LastRowOnPage"))
ll_PosX   = 1
ll_PosY   = 1

if al_Row > 0 then
	ls_evaluate  = "'RowHeight()'," + string(al_row)
	ls_Describe  = 'Evaluate(' +  ls_evaluate + ')'
	ll_posh      = long(adw_source.Describe (ls_describe))
	ll_posY      = long(adw_source.Describe ("DataWindow.Header.Height"))
	if ib_haygroupby then
		ls_evaluate  = "'Page()'," + string(ll_first)
		ls_Describe  = 'Evaluate(' +  ls_evaluate + ')'
		ll_firstpage = long(adw_source.Describe (ls_describe))
		ls_evaluate  = "'Page()'," + string(al_row)
		ls_Describe  = 'Evaluate(' +  ls_evaluate + ')'
		ll_lastpage  = long(adw_source.Describe (ls_describe))
	end if
	for ll_back = ll_first to (al_row - 1)
		ls_evaluate = "'RowHeight()'," + string(ll_back)
		ls_Describe = 'Evaluate(' +  ls_evaluate + ')'
		ll_posy     = ll_posY + long(adw_source.Describe (ls_describe))
	next
	if ll_firstpage = ll_lastpage then
	else			
		for ll_back = (al_row - 1) to 1 step -1
			ls_evaluate    = "'Page()'," + string(ll_back)
			ls_Describe    = 'Evaluate(' +  ls_evaluate + ')'
			if long(adw_source.Describe (ls_describe)) = ll_lastpage  then continue
			if long(adw_source.Describe (ls_describe)) < ll_firstpage then exit
			ls_evaluate    = "'RowHeight()'," + string(ll_back)
			ls_Describe    = 'Evaluate(' +  ls_evaluate + ')'
			ll_totalheight = ll_totalheight + long(adw_source.Describe (ls_describe))
		next
		ll_totalheight = UnitsToPixels (adw_source.height,YUnitsToPixels!) - long(adw_source.Describe ("DataWindow.Header.Height")) - ll_totalheight
		if is_key = 'OT' then ll_totalheight = ll_totalheight - 16 // altura del scroll horizontal !!!
		ll_posy = ll_posy + ll_totalheight - 1
	end if
else
	ll_posh    = long(adw_source.Describe ("DataWindow.Detail.Height"))
end if

if ll_first > 1 then
	lb_scroll = true		
end if
if ll_last < adw_source.RowCount() then
	lb_scroll = true		
end if
if lb_scroll then
	ll_posw   = ll_posw - 16
end if
ll_posw   = ll_posw - 1	

ls_marco = ' r_marco.x = "' + string(ll_posX) + '"'
ls_marco = ls_marco + ' r_marco.width="'  + string (ll_posw) + '"'
//ls_marco = ls_marco + ' r_marco.y = "0" ~t if(first ( numinterno  for group 1) =  numinterno, long(describe("DataWindow.Detail.Height") )-1, -1 )'
//ls_marco = ls_marco + ' r_marco.height="' + string (ll_posh) + '"'
//ls_marco = ls_marco + ' r_marco.pen.style="' + string (0)+ '"'
//ls_marco = ls_marco + ' r_marco.pen.width="2"'
//ls_marco = ls_marco + ' r_marco.background.mode="1"'	
//ls_marco = ls_marco + ' r_marco.background.color="' + string (gf_Get_color ('TRANS'))    + '"'
//ls_marco = ls_marco + ' r_marco.Brush.Hatch="7"'
//
adw_source.pOST Modify (ls_marco)
adw_source.SetRedraw(true)

end subroutine

public subroutine of_getrow (boolean ab_switch);choose case is_key //RLV:19881155075:21.09.2007
	case 'CITA'
		of_show_marco(dw_show10, dw_show10.getrow(),ab_switch)
	case 'PRESUP'
		of_show_marco(dw_show20, dw_show20.getrow(),ab_switch)
	case 'OT'
		of_show_marco(dw_show30, dw_show30.getrow(),ab_switch)
	case 'OTDET'
		of_show_marco(dw_s30det, dw_s30det.getrow(),ab_switch)
	case 'CITADET'	// FAB - 5/12/2007 20661053029
		of_show_marco(dw_s10det, dw_s10det.getrow(),ab_switch)
end choose
	

end subroutine

public subroutine of_show_marco (datawindow adw_source, long al_row, boolean ab_switch);Boolean 	lb_scroll
String 	ls_create
String 	ls_evaluate
String 	ls_describe
String	ls_visible
String	ls_CreateBase
String	ls_error
String	ls_band
String	ls_filter

Long   	ll_posw
Long   	ll_posh
Long   	ll_posX
Long   	ll_PosY
Long   	ll_back
Long   	ll_first
Long   	ll_last
Long   	ll_firstpage
Long   	ll_lastpage
Long	 	ll_totalheight

Long		ll_visgroup
Long		ll_NumInterno
Long		ll_NumInterno2
Long		ll_primero
Long		ll_nrorows
Long		ll_rows
Long		ll_find
Long 		ll_cap
Long		ll_heightOT

String	ls_find



if isvalid (adw_source) then
else
	return
end if

if not (ab_switch) then
	if long (adw_source.Describe ('l_dragsource_top.x2')) > 0 then
	else
		return
	end if
else
	if ib_marcofoco then
	else
		return
	end if
end if


adw_source.Setredraw(false)
adw_source.Modify ('destroy l_dragsource_top')
adw_source.Modify ('destroy l_dragsource_left')
adw_source.Modify ('destroy l_dragsource_right')
adw_source.Modify ('destroy l_dragsource_bottom')

if (ab_switch) then	
	ll_posw   = adw_source.Width
	ll_posh   = adw_source.height
	ll_posw   = UnitsToPixels (ll_posw,XUnitsToPixels!)
	ll_first  = long (adw_source.Describe ("DataWindow.FirstRowOnPage"))
	ll_last   = long (adw_source.Describe ("DataWindow.LastRowOnPage"))	
	ll_PosX   = il_scrollpos + 1
	ll_PosY   = 1
	
	if al_Row > 0 then
		ll_visgroup  = 	adw_source.GetItemNumber(al_row,'primero')		
		ls_evaluate  = 	"'RowHeight()'," + string(al_row)
		ls_Describe  = 	'Evaluate(' +  ls_evaluate + ')'
		ll_posh      = 	long(adw_source.Describe (ls_describe)) 
		ll_posY      = 	long(adw_source.Describe ("DataWindow.Header.Height")) 
		ls_visible 	 = 	"1~tif("+ String(al_Row) + " >=~ " + String(ll_first) + " AND " + String(al_row)
		ls_visible 	 = 	ls_visible + " <=~ " + String(ll_last) +	",1,0)"
		
		if ib_haygroupby then
			ls_evaluate  = "'Page()'," + string(ll_first)
			ls_Describe  = 'Evaluate(' +  ls_evaluate + ')'
			ll_firstpage = long(adw_source.Describe (ls_describe))
			ls_evaluate  = "'Page()'," + string(al_row)
			ls_Describe  = 'Evaluate(' +  ls_evaluate + ')'
			ll_lastpage  = long(adw_source.Describe (ls_describe))			
		end if
		for ll_back = ll_first to (al_row - 1)
			ls_evaluate = "'RowHeight()'," + string(ll_back)
			ls_Describe = 'Evaluate(' +  ls_evaluate + ')'
			ll_posy     = ll_posY + long(adw_source.Describe (ls_describe))
		next
		if ll_firstpage = ll_lastpage then
		else
			// El GroupBy produce zonas vacías entre el último registro de una página
			// y el primero de la siguiente. Esto produce un desfase en el valor de ll_posY,
			// es decir, de la posición vertical en la que hacemos aparecer el rectángulo
			// r_source. Aquí corregimos ese desfase calculando la altura total de los
			// registros de la página correspondiente a la primera fila actual en el datawindow
			// y restando esa altura de la del datawindow en sí mismo.
			for ll_back = (al_row - 1) to 1 step -1
				ls_evaluate    = "'Page()'," + string(ll_back)
				ls_Describe    = 'Evaluate(' +  ls_evaluate + ')'
				if long(adw_source.Describe (ls_describe)) = ll_lastpage  then continue
				if long(adw_source.Describe (ls_describe)) < ll_firstpage then exit
				ls_evaluate    = "'RowHeight()'," + string(ll_back)
				ls_Describe    = 'Evaluate(' +  ls_evaluate + ')'
				ll_totalheight = ll_totalheight + long(adw_source.Describe (ls_describe))
			next
			ll_totalheight = UnitsToPixels (adw_source.height,YUnitsToPixels!) - long(adw_source.Describe ("DataWindow.Header.Height")) - ll_totalheight
			// 0000635  SJP  21-5-2014  No siempre se muestra la barra de scroll horizontal
			// ll_totalheight = ll_totalheight - 16 // altura del scroll horizontal !!!
			if of_hay_hscrollbar(adw_source) then ll_totalheight = ll_totalheight - 16 // altura del scroll horizontal !!!
			// ---
			ll_posy = ll_posy + ll_totalheight - 1
		end if
	else
		ll_posh    = long(adw_source.Describe ("DataWindow.Detail.Height"))		
	end if
	
	if ll_first > 1 then
		lb_scroll = true		
	end if
	if ll_last < adw_source.RowCount() then
		lb_scroll = true		
	end if
	if lb_scroll then
		ll_posw   = ll_posw - 17
	end if
	ll_posw   = ll_posw - 2
	
	If ll_visgroup = 0 Then
	Else
		If ll_visgroup = 2 Then //PICAR EN CABECERA1
			ll_posY = ll_posY + ll_posh / ll_visgroup
			ll_posh = ll_posh / ll_visgroup
		Else
			If al_row > 0 Then
				ll_NumInterno = adw_source.GetItemNumber(al_row,'numinterno')
				ls_find = 'NumInterno=' + String(ll_NumInterno)
				ll_find = adw_source.find(ls_find, 1, adw_source.rowcount())
				If ll_find > 0 Then
					If ll_first > ll_find Then 
						ll_find = ll_first
						ll_heightOT = 0
					Else
						ll_heightOT = 16
					End If					
					
					If adw_source.GetItemNumber(ll_find,'primero') = 3 And ll_find = al_row Then 
						ll_cap = long(adw_source.Describe ('groupby_comp.height'))
						ll_posh = ll_posh - ll_cap - ll_heightOT
						ll_posy = ll_posy + ll_cap
					Else
						If adw_source.GetItemNumber(ll_find,'primero') = 4 And ll_find = al_row Then  
							ll_posh = ll_posh - ll_heightOT
						Else
							If adw_source.GetItemNumber(al_row,'primero') = 4 And ll_find = ll_first Then
								ll_posh = ll_posh - 16
							End If		
						End If
					End If
					
					for ll_back = ll_find to ll_last
						ll_NumInterno2 = adw_source.GetItemNumber(ll_back,'numinterno')
						ll_primero 		= adw_source.GetItemNumber(ll_back,'primero')
						If ll_NumInterno 	= ll_NumInterno2 Then
							If ll_back = al_row  Then continue							
							ll_nrorows = ll_nrorows + 1
						Else
							Exit
						End If
					next					
				End If				
				
				If ll_first > al_row  Then
					ll_posy    = long(adw_source.Describe ("DataWindow.Header.Height")) 
					ls_visible = 	"1~tif("+ String(ll_back) + " >~ " + String(ll_first) + ",1,0)"
					ll_nrorows = ll_nrorows - 1
				Else
					If ll_last < al_row Then
						ll_posy = ll_posy - ll_posh * (al_row - ll_find ) - ll_heightOT
						ls_visible = 	"1~tif("+ String(ll_find) + " >~ " + String(ll_last) + ",0,1)"
						ll_nrorows = ll_nrorows - 1
					Else
						If (al_row - ll_find) > 0 Then ll_posy = ll_posy - ll_posh * (al_row - ll_find) - ll_heightOT
					End If
				End If
				
				ll_posh = ll_posh + ll_posh * (ll_nrorows) + ll_heightOT
			End If
		End If				
	End If

	ll_posh = ll_posh - 1
	
	ls_band = ' foreground'
	ls_CreateBase = ls_CreateBase + ' tag              = "TRANSLATE=N"'			
	ls_CreateBase = ls_CreateBase + ' pen.color        = "' + string (gf_get_color('RECTANGULO_SELECTOR') )     + '"'
	ls_CreateBase = ls_CreateBase + ' pen.style        = "' + string (0)            + '"'
	ls_CreateBase = ls_CreateBase + ' pen.width        = "' + string (2)            + '"'
	ls_CreateBase = ls_CreateBase + ' background.mode  = "' + string (0)            + '"'			
	ls_createBase = ls_createBase + ' background.color = "' + string (gf_get_color('TRANS'))    + '"'
	ls_CreateBase = ls_CreateBase + ' moveable         = '  + string (0)                
	ls_CreateBase = ls_CreateBase + ' resizeable       = '  + string (0)              
	ls_CreateBase = ls_CreateBase + " visible          = '" + ls_visible + "'"
	
	ls_create = 'create line ('
	ls_create = ls_create + ' band	= ' + ls_band
	ls_create = ls_create + ' name   = l_dragsource_top'
	ls_create = ls_create + ' x1     = "' + string (ll_posX)            + '"'
	ls_create = ls_create + ' x2     = "' + string (ll_posX + ll_posw )  + '"'
	ls_create = ls_create + ' y1     = "' + string (ll_posY)  + '"'
	ls_create = ls_create + ' y2     = "' + string (ll_posY)  + '"'
	ls_create = ls_create + ls_CreateBase
	ls_create = ls_create + ')'
	ls_error = adw_source.Modify (ls_create)
	
	ls_create = 'create line ('
	ls_create = ls_create + ' band   = ' + ls_band
	ls_create = ls_create + ' name   = l_dragsource_left'
	ls_create = ls_create + ' x1     = "' + string (ll_posX)            + '"'
	ls_create = ls_create + ' x2     = "' + string (ll_posX)            + '"'
	ls_create = ls_create + ' y1     = "' + string (ll_posY - 1)  + '"'
	ls_create = ls_create + ' y2     = "' + string (ll_posY + ll_posh )+ '"'
	ls_create = ls_create + ls_CreateBase
	ls_create = ls_create + ')'
	ls_error = adw_source.Modify (ls_create)
	
	ls_create = 'create line ('
	ls_create = ls_create + ' band   = ' + ls_band
	ls_create = ls_create + ' name   = l_dragsource_right'
	ls_create = ls_create + ' x1     = "' + string (ll_posX + ll_posw)  + '"'
	ls_create = ls_create + ' x2     = "' + string (ll_posX + ll_posw)  + '"'
	ls_create = ls_create + ' y1     = "' + string (ll_posY)  + '"'
	ls_create = ls_create + ' y2     = "' + string (ll_posY + ll_posh) + '"'
	ls_create = ls_create + ls_CreateBase
	ls_create = ls_create + ')'
	ls_error = adw_source.Modify (ls_create)
	
	ls_create = 'create line ('
	ls_create = ls_create + ' band   = ' + ls_band
	ls_create = ls_create + ' name   = l_dragsource_bottom'
	ls_create = ls_create + ' x1     = "' + string (ll_posX)            + '"'
	ls_create = ls_create + ' x2     = "' + string (ll_posX + ll_posW)  + '"'
	ls_create = ls_create + ' y1     = "' + string (ll_posY + ll_posH ) + '"'
	ls_create = ls_create + ' y2     = "' + string (ll_posY + ll_posH) + '"'
	ls_create = ls_create + ls_CreateBase
	ls_create = ls_create + ')'
	ls_error = adw_source.Modify (ls_create)
	adw_source.Setredraw(true)	
	
end if
adw_source.Setredraw(true)
end subroutine

public subroutine of_show_marco_off ();choose case is_key //RLV:19881155075:21.09.2007
	case 'CITA'
		of_show_marco(dw_show10, 0,false)
	case 'PRESUP'
		of_show_marco(dw_show20, 0,false)
	case 'OT'
		of_show_marco(dw_show30, 0,false)
	case 'OTDET'
		of_show_marco(dw_s30det, 0,false)
	case 'CITADET'	// FAB - 5/12/2007 20661053029
		of_show_marco(dw_s10det, 0,false)
end choose

ib_marcofoco = false
	

end subroutine

public subroutine of_show_marco_on ();ib_marcofoco = true
	

end subroutine

public subroutine of_show_cortesia (long al_row, u_dw adw_det);// Modificado por // FAB - 5/12/2007 20661053029
n_cst_manto_param	lnv_manto_param
Pointer	old_pointer

if adw_det.GetItemNumber (al_row, 'TieneVehCortesia') > 0 then
else
	return
end if

of_calendar_popup_stop()
inv_manager.of_clicked (0,'',0)
inv_manager.of_set_bussy (true)
old_pointer = setpointer (hourglass!)

lnv_manto_param = create n_cst_manto_param
lnv_manto_param.ia_param[1] = adw_det.GetItemString (al_row, 'emp')
lnv_manto_param.ia_param[2] = adw_det.GetItemNumber (al_row, 'numinterno')

// #38281200049#
sqlca.of_verifytrans_outside('u_calendar_ot.of_show_cortesia.1')
OpenWithParm (w_show_ttcortesiaasignacion_ot, lnv_manto_param)
// #38281200049#
sqlca.of_verifytrans_outside('u_calendar_ot.of_show_cortesia.2')


destroy lnv_manto_param

inv_manager.of_set_notestimer(TRUE)
inv_manager.of_set_bussy (false)
setpointer (old_pointer)

return

end subroutine

protected function integer of_prepare_popup (long al_row, u_dw adw);Integer 	li_ret

Integer	li_anoCita
Integer	li_anoOT

String	ls_emp
String	ls_cita
String	ls_ot
String	ls_vehDescrip
String	ls_marcaCor
String	ls_modeloCor
String 	ls_versionCor
String	ls_matricCor

Long		ll_numintot
Long		ll_numIntVehCortesia
Long		ll_numCita
Long		ll_numOT
Long		ll_rowtgVeh

//Limpio

of_init_plancortesia_popup()

inv_plancortesia_popup.ids_source.reset()
inv_plancortesia_popup.is_numcita		= ''
inv_plancortesia_popup.is_numot			= ''
inv_plancortesia_popup.is_vehDescrip	= ''

//muevo la fila al popup
il_popup_row = 0
if al_row > 0 and al_row <= adw.RowCount() then
	ls_emp		=	adw.getitemString(al_row,'emp')
	ll_numintot	=	adw.getitemNumber(al_row,'numInterno')
	ll_numCita	=	adw.getitemNumber(al_row,'numCita')
	ll_numOT		=	adw.getitemNumber(al_row,'numot')
	
	li_anoOT 	=	adw.getitemNumber(al_row,'anoOT')
	if isNull(li_anoOT) then li_anoOT = 0

	li_anoCita 	=	adw.getitemNumber(al_row,'anoCita')
	if isNull(li_anoCita) then li_anoCita = 0

	ids_ttcortesiaasignacion.of_retrieve (ls_emp, ll_numIntOT)
	sqlca.of_commit ()
	
	if ids_ttcortesiaasignacion.rowcount () > 0 then
		li_ret = ids_ttcortesiaasignacion.of_rowscopy(1,1,primary!,inv_plancortesia_popup.ids_source,1,primary!)
	
		if li_ret = SUCCESS then
			ids_ttcortesiaasignacion.of_sort('numIntVehCortesia D')
			ll_numIntVehCortesia = ids_ttcortesiaasignacion.getItemNumber (1, 'numIntVehCortesia')
			
			ll_rowtgVeh = ids_tgveh.of_retrieve (ll_numIntVehCortesia)
			sqlca.of_commit ()
			
			if ll_rowtgVeh > 0 then
				ls_matricCor	= ids_tgveh.getItemString (ll_rowtgVeh, 'matric')
				ls_marcaCor		= ids_tgveh.getItemString (ll_rowtgVeh, 'marca')
				ls_modeloCor	= ids_tgveh.getItemString (ll_rowtgVeh, 'modelo')
				ls_versionCor	= ids_tgveh.getItemString (ll_rowtgVeh, 'version')
			end if
			if isNull(ls_matricCor)		then ls_matricCor		= ''
			if isNull(ls_marcaCor) 		then ls_marcaCor 		= ''
			if isNull(ls_modeloCor) 	then ls_modeloCor 	= ''
			if isNull(ls_versionCor)	then ls_versionCor	= ''
			
			// Obtención descripción veh.cortesia
			if ls_matricCor > '' then
				ls_matricCor = ', (' + ls_matricCor + ')'
			end if
			ls_vehDescrip = gf_memo_descrip ('TGVERSION',ls_marcaCor + ';' + ls_modeloCor + ';' + ls_versionCor) + ' ' + ls_matricCor
			if ls_vehDescrip > '' then
			else
				ls_vehDescrip = ''
			end if
			
			if ll_numintot >0 then
				if ll_numCita > 0 then
					ls_cita 	= string(li_anoCita) + '/' + string(ll_numCita)
				end if	
				if ll_numOT > 0 then
					ls_ot		= string(li_anoOT) + '/' + string(ll_numOT)
				end if	
				
				inv_plancortesia_popup.is_numcita	=	ls_cita
				inv_plancortesia_popup.is_numot		=	ls_ot	
				inv_plancortesia_popup.is_vehDescrip=	ls_vehDescrip
			end if	
			
			inv_plancortesia_popup.il_row_popup=1
			il_popup_row = al_row		
		end if	
	end if
end if	

return li_ret

return SUCCESS
end function

public subroutine of_pacteoffice ();String ls_emp
String ls_tal
Long   ll_NumInterno
Long   ll_row

ls_emp = gnv_app.inv_empwrkmanager.is_empwrk
ls_tal = gnv_app.inv_empwrkmanager.is_talwrk

ll_NumInterno = inv_pacteoffice.of_action_creationor (ls_emp,ls_tal)
if ll_NumInterno > 0 then
else
	return
end if


SetRedraw(false)
of_changeVista()

				// FAB - 05/02/2008 - 21281234258. La función of_changevista oculta el ib_marcofoco poniendolo a false
Event ue_parentnotify ('CLICKONROW')
ll_row = idw_show.of_find('numinterno = ' + string(ll_numinterno))
if ll_row > 0 then
	idw_show.ScrollToRow(ll_row)
end if
SetRedraw(true)
end subroutine

public function BOOLEAN of_ispacteofficeinstalled ();if isvalid (inv_pacteoffice) then
else
	gnv_app.inv_nvocache.of_register('n_cst_pacteoffice',inv_pacteoffice)
end if
String ls_emp
String ls_tal

ls_emp = gnv_app.inv_empwrkmanager.is_empwrk
ls_tal = gnv_app.inv_empwrkmanager.is_talwrk

if inv_pacteoffice.of_get_isinstalled (ls_emp,ls_tal) then
	return true
end if

return false
end function

public subroutine of_set_avisotooltipcita (long al_row);u_dw	 ldw

Long		ll_find

String	ls_tooltip
String	ls_StatusEnCurso


if al_row > 0 then
else
	return
end if

choose case is_key
	case 'CITA'   ; ldw = dw_show10
	case 'CITADET'; ldw = dw_s10det
	case else   ; return
end choose

if al_row > ldw.Rowcount() then
   return
end if


ls_StatusEnCurso        = ldw.GetItemString (al_row,'StatusEnCurso')	
if ls_StatusEnCurso > '' then
	ll_find = ids_otstatus.of_find ('codigo="' + ls_StatusEnCurso  + '"')
	if ll_find > 0 then
		ls_tooltip = ids_otstatus.GetItemString (ll_find,'descrip')
	end if
end if

ls_tooltip = '     ' + trim(ls_tooltip)

ldw.SetItem (al_row,'tooltip',ls_tooltip)

return

end subroutine

public subroutine of_show_listarobef ();If IsValid(inv_robef) Then
Else
	gnv_app.inv_nvocache.of_register ('n_cst_tmrobef', inv_robef)
End If

of_mouse_capture()
SetPointer (HourGlass!)
of_set_bussy (true)
inv_robef.of_show_listarobef()
of_set_bussy (false)
of_mouse_release()
SetPointer (Arrow!)
end subroutine

public subroutine of_init_keyreader ();/////////////////////////////////////////////////////////////////////////////////
// DESCRIPCION	: Inicialización del objeto de negocio keyReader
//
// PARAMETROS	
//
// RETORNO		
//
// HISTORIAL	: Versión inicial
/////////////////////////////////////////////////////////////////////////////////
// Ref.:	27141716498
// Autor:	FAB
// Fecha:	08/09/2009
/////////////////////////////////////////////////////////////////////////////////
if isvalid(inv_keyreader) then return
	
inv_keyreader = create n_cst_ttkeyreader
inv_keyreader.of_init()
of_add_classlink(inv_keyreader)

end subroutine

public subroutine of_init_tgmarca ();if isvalid(ids_tgmarca) then
else
	gnv_app.inv_dwcache.of_getregistered('TGMARCA', ids_tgmarca)
	if ids_tgmarca.RowCount() > 0 then
	else
		ids_tgmarca.of_Retrieve()
		sqlca.of_commit()
	end if
end if

end subroutine

public subroutine of_init_plancortesia_popup ();if isvalid(inv_plancortesia_popup) then
else
	inv_plancortesia_popup = create n_cst_plancortesia_popup
	inv_plancortesia_popup.inv_manager 			= inv_manager
	inv_plancortesia_popup.idw_show    			= dw_show10
	inv_plancortesia_popup.ib_calendarCita		= true
end if

end subroutine

public function integer of_repositionrow (string as_emp, long al_numinterno);n_ds		lds_target

String	ls_emp
Long		ll_numinterno
Long		ll_row

// OR creada, facturada y cerrada en la misma sesión, por ejemplo, pueden producir
// que no la siguiente función retorne con RowCount() = 0

ls_emp        = as_emp
ll_numinterno = al_numinterno

of_reselect (lds_target, ll_numinterno)

if lds_target.RowCount() > 0 then
	ib_retrieving = true
	idw_show.SetRedraw (false)
	event ue_parentnotify ('REDRAW=FALSE')			//JMR:7.3.2013 39911521587
	ll_row = idw_show.of_Find ('numinterno=' + string (ll_numinterno))
	if ll_row > 0 then
	else
		if ib_haygroupby then
			ll_row = idw_show.InsertRow(0)
		else
			ll_row = idw_show.InsertRow(1)
		end if
	end if
	if ll_row > 0 then
		idw_show.ScrollToRow (ll_row)
		idw_show.SetItem (ll_row,'emp'       ,ls_emp)
		idw_show.SetItem (ll_row,'numinterno',ll_numinterno)
		inv_manager.of_columnscopy (lds_target,1,idw_show,ll_row)
		idw_show.SetItemStatus (ll_row,0,Primary!,DataModified!)
		idw_show.SetItemStatus (ll_row,0,Primary!,NotModified!)
		if ib_haygroupby then
			of_set_groupby(is_groupbyvalue, ll_row)
		else
			idw_show.ScrollToRow (1)
		end if
		ll_row = idw_show.of_Find ('numinterno=' + string (ll_numinterno))
		if ll_row > 0 then
			idw_show.ScrollToRow (ll_row)
		end if		
	end if
	ib_retrieving = false
	idw_show.SetRedraw (true)
	event ue_parentnotify ('REDRAW=TRUE')		//JMR:7.3.2013 39911521587
end if

return SUCCESS
end function

public subroutine of_calendar_popup_stop ();if isvalid(inv_calendar_popup) then
	inv_calendar_popup.of_stop()
end if

end subroutine

public subroutine of_init_datastores (string as_type);n_ds		lds[]
u_dw		ldw[]

Integer	li_dw

String	ls_sql

choose case as_type
	case '10'
		if isvalid(ids_show10) then
		else
			of_create_aux (ids_show10    , dw_show10.DataObject)
			// Auxiliares para re-lectura después de acceder a los mantenimientos de Cita/Presupuesto/OT:
			of_create_aux (ids_aux_show10, dw_show10.DataObject)
			ids_show10.of_clean_for_fast ()
			lds[1] = ids_show10
			lds[2] = ids_aux_show10
			ldw[1] = dw_show10
			if not ib_haygroupby then
				ids_show10.of_ShareData (dw_show10)
			end if
		end if
	case '20'
		if isvalid(ids_show20) then
		else
			of_create_aux (ids_show20    , dw_show20.DataObject)
			of_create_aux (ids_aux_show20, dw_show20.DataObject)
			ids_show20.of_clean_for_fast ()
			lds[1] = ids_show20
			lds[2] = ids_aux_show20
			ldw[1] = dw_show20
			if not ib_haygroupby then
				ids_show20.of_ShareData (dw_show20)
			end if
		end if
	case '30'
		if isvalid(ids_show30) then
		else
			of_create_aux (ids_show30    , dw_show30.DataObject)
			of_create_aux (ids_aux_show30, dw_show30.DataObject)
			ids_show30.of_clean_for_fast ()
			lds[1] = ids_show30
			lds[2] = ids_aux_show30
			ldw[1] = dw_show30
			if not ib_haygroupby then
				ids_show30.of_ShareData (dw_show30)
			end if
		end if
	case '30det'
		if isvalid(ids_s30det) then
		else
			of_create_aux (ids_s30det    , dw_s30det.DataObject)
			of_create_aux (ids_aux_s30det, dw_s30det.DataObject)
			ids_s30det.of_clean_for_fast ()
			lds[1] = ids_s30det
			lds[2] = ids_aux_s30det
			ldw[1] = dw_s30det
		end if
	case '10det'
		if isvalid(ids_s10det) then
		else
			of_create_aux (ids_s10det    , dw_s10det.DataObject)	// FAB - 5/12/2007 20661053029
			of_create_aux (ids_aux_s10det, dw_s10det.DataObject)	// FAB - 5/12/2007 20661053029
			ids_s10det.of_clean_for_fast ()	// FAB - 5/12/2007 20661053029
			lds[1] = ids_s10det
			lds[2] = ids_aux_s10det
			ldw[1] = dw_s10det
		end if
end choose

if isvalid(ids_tgveh) then
else
	// =====
	// Ref.: 18741556467 - jdm - 22/05/2007
	inv_manager.of_create_aux(ids_tgveh, 'dw_main_tgveh')
	inv_manager.of_create_aux(ids_ttcortesiaasignacion, 'dw_manto_ttcortesiafecreales_asig')
	ids_tgveh.of_setupdateable(FALSE)
	ids_ttcortesiaasignacion.of_setupdateable(FALSE)
end if

// JMR:22.10.2009 27581451402
choose case sqlca.is_tiposervidor
	case 'MSS','SNC'
	case else
		for li_dw = 1 to upperbound(lds)
			ls_sql = lds[li_dw].describe('DataWindow.Table.Select')
			if pos(ls_sql,'WITH(INDEX') > 0 then
				ls_sql = gnv_app.inv_string.of_GlobalReplace (ls_sql,'WITH(INDEX(IX_TTOTCAB_Status_Anulada))','')
				lds[li_dw].modify('DataWindow.Table.Select="' + ls_sql + '"')
			end if
			if pos(ls_sql,'OPTION(FORCE ORDER)') > 0 then
				ls_sql = gnv_app.inv_string.of_GlobalReplace (ls_sql,'OPTION(FORCE ORDER)','')
				lds[li_dw].modify('DataWindow.Table.Select="' + ls_sql + '"')
			end if
		next
		for li_dw = 1 to upperbound(ldw)
			ls_sql = ldw[li_dw].describe('DataWindow.Table.Select')
			if pos(ls_sql,'WITH(INDEX') > 0 then
				ls_sql = gnv_app.inv_string.of_GlobalReplace (ls_sql,'WITH(INDEX(IX_TTOTCAB_Status_Anulada))','')
				ldw[li_dw].modify('DataWindow.Table.Select="' + ls_sql + '"')
			end if
			if pos(ls_sql,'OPTION(FORCE ORDER)') > 0 then
				ls_sql = gnv_app.inv_string.of_GlobalReplace (ls_sql,'OPTION(FORCE ORDER)','')
				ldw[li_dw].modify('DataWindow.Table.Select="' + ls_sql + '"')
			end if
		next
end choose

end subroutine

public subroutine of_traduccion_dinamica ();choose case is_key
	case 'CITA'
		if dw_show10.tag = 'TRANSLATE=N' then
			dw_show10.tag = ''
			of_translate (dw_show10)
		end if
	case 'PRESUP'
		if dw_show20.tag = 'TRANSLATE=N' then
			dw_show20.tag = ''
			of_translate (dw_show20)
		end if
	case 'OT'
		if dw_show30.tag = 'TRANSLATE=N' then
			dw_show30.tag = ''
			of_translate (dw_show30)
		end if
	case 'OTDET'
		if dw_s30det.tag = 'TRANSLATE=N' then
			dw_s30det.tag = ''
			of_translate (dw_s30det)
		end if
	case 'CITADET'
		if dw_s10det.tag = 'TRANSLATE=N' then
			dw_s10det.tag = ''
			of_translate (dw_s10det)
		end if
end choose

end subroutine

public subroutine of_hide_dwdatoscli (boolean ab_forzed);// IPS: 17.05.2006 - 13911608044 - Parada Intervencion
// IPS: 10.07.2006 - SMS
// JMR: 15.02.2007 - Fichajes incompletos

Boolean	lb_ok

if ab_forzed then
	lb_ok = true
elseif ii_tooltip = ii_lasttooltip then
	return

	if isvalid(iuo_panel) then
		event ue_parentnotify('DWDATOSCLIVISIBLE')
		lb_ok = ib_dwdatosclivisible
	elseif isvalid(iuo_panel_cortesia) then
		lb_ok = iuo_panel_cortesia.dw_datoscli.visible
	end if
	
	lb_ok = lb_ok or dw_datosparada.visible or dw_datossms.visible or dw_datostiempo.visible or dw_datosmail.visible		//JMR:19.7.2013 40801435244 - Datos eMail
	if isvalid(iw_datoscli) and not lb_ok then
		if iw_datoscli.visible then lb_ok = true
	end if
end if

if lb_ok then
	event ue_parentnotify ('SHOW_DATOSCLI=HIDE')
	dw_datosparada.visible = false
	dw_datossms.visible    = false
	dw_datosmail.visible   = false		//JMR:19.7.2013 40801435244
	dw_datostiempo.visible = false
	if isvalid(iw_datoscli) then
		if iw_datoscli.visible then
			iw_datoscli.of_hide(handle(this))
			if not ib_calendar_cita then
				ib_calendar_cita = false
			end if
		end if
		if isvalid(iuo_panel) then
			iuo_panel.SetRedraw(true)
		elseif isvalid(iuo_panel_cortesia) then
			iuo_panel_cortesia.SetRedraw(true)
		end if
	end if
end if

end subroutine

public subroutine of_hide_tooltip (u_dw adw_source);choose case adw_source
	case dw_show10
		inv_Tooltip.SetTipText(adw_source,ii_dwID[1],'')
	case dw_show30
		inv_Tooltip.SetTipText(adw_source,ii_dwID[3],'')
	case dw_s30det
		inv_Tooltip.SetTipText(adw_source,ii_dwID[4],'')
	case dw_s10det
		inv_Tooltip.SetTipText(adw_source,ii_dwID[5],'')
end choose

end subroutine

private subroutine of_set_orderby_obtenercolumnas (u_dw adw_dw, string as_orden, string as_ascdesc, ref string as_expresionordenacion, ref string as_nombresort, ref string as_columnaflechadw);/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 0000312  SJP  12-3-2014  Función of_set_orderby_obtenercolumnas, separada de la función ya existente of_set_orderby
//                          Produce expresiones de ordenación para los dws de presupuestos, citas y ots. 
//
//     Entrada
//        adw_dw: dw a "ordenar"
//        as_orden: columna a ordenar. Ejemplo:
//             entregaprevfecha_t - (caso de click en cabecera)
//             fecha              - (caso de ordenación a partir del panel de selección de agrupación y ordenación)
//        as_ascdesc:  A o D
//
//     Salida (a través de parámetros pasados por referencia)
//        as_expresionordenacion
//        as_nombresort           - valor a asignar a is_lastSorted (para mas información, seguir el uso de dicha variable)
//        as_columnaflechadw      - columna del dw sobre la que se dibujará la flecha ascendente o descendente para indicar al usuario la ordenación aplicada
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

string ls_expresion

as_expresionordenacion = ''   // Ex
as_nombresort = ''
as_columnaflechadw = ''

if as_orden > ''   then ; else ; return ; end if
if isvalid(adw_dw) then ; else ; return ; end if

as_ascdesc = upper(as_ascdesc)
if as_ascdesc <> 'A' and as_ascdesc <> 'D' then return

as_orden = lower (as_orden)

if adw_dw = dw_s10det then
	as_orden = as_orden
end if

// Por defecto
as_nombresort      = as_orden
as_columnaflechadw = as_orden

choose case as_orden
	case 'entregaprevfecha_t'
		choose case adw_dw
			case dw_s30det
				as_expresionordenacion = 'if (isnull(entregaprevfecha ),datetime(date(1900,1,1)),entregaprevfecha) $' + &
				            ', if (isnull(entregaprevhora  ),0                       ,entregaprevhora ) $' + &
				            ', if (isnull(entregaprevminuto),0                       ,entregaprevminuto) $' + &
				            ', AnoOT $, NumOT $'
		end choose
		
	case 'numprisma_t'
		choose case adw_dw
			case dw_show30
				// Primero siempre las OTs sin fecha de llegada
				as_expresionordenacion = 'if (isnull(llegadavehfecha),0,1) A ' + &
				            ', if (isnull(NumPrisma),"",NumPrisma) $' + &
				            ', AnoOT $, NumOT $'
		end choose
	
	case 'fecha', 'fechaaperturaot_t', 'fechatarea_t', 'llegadavehfecha_t'
		choose case adw_dw
			case dw_show10, dw_s10det ; as_expresionordenacion = 'tgagendatarea_iniciofecha $, tgagendatarea_iniciohora $, tgagendatarea_iniciominuto $, AnoCita $, NumCita $'
			case dw_show20            ; as_expresionordenacion = 'FechaPresup $, AnoPresup $, NumPresup $'
			case dw_show30            ; as_expresionordenacion = 'fechaaperturaot $, AnoOT $, NumOT $'
			case dw_s30det            ; as_expresionordenacion = 'LlegadaVehFecha $, AnoOT $, NumOT $'
		end choose
		if as_orden = 'fecha' then 
			as_nombresort = 'fechatarea_t'
			choose case adw_dw
				case dw_show10, dw_s10det ; as_columnaflechadw = 'fechatarea_t'
				case dw_show20            ; as_columnaflechadw = 'fechaaperturaot_t'
				case dw_show30            ; as_columnaflechadw = 'fechaaperturaot_t'
				case dw_s30det            ; as_columnaflechadw = 'llegadavehfecha_t'
			end choose
		end if

	case 'matric','matric_t'
		choose case adw_dw
			case dw_show10, dw_s10det ; as_expresionordenacion = 'Matric $, AnoCita $, NumCita $'
			case dw_show20            ; as_expresionordenacion = 'Matric $, AnoPresup $, NumPresup $'
			case dw_show30, dw_s30det ; as_expresionordenacion = 'Matric $, AnoOT $, NumOT $'
		end choose
		as_nombresort      = 'matric_t'
		as_columnaflechadw = as_nombresort

	case 'cliente', 'razonx_t'
		choose case adw_dw
			case dw_show10, dw_s10det ; as_expresionordenacion = 'razonx $, AnoCita $, NumCita $'
			case dw_show20            ; as_expresionordenacion = 'razonx $, AnoPresup $, NumPresup $'
			case dw_show30, dw_s30det ; as_expresionordenacion = 'razonx $, AnoOT $, NumOT $'
		end choose
		as_nombresort      = 'razonx_t'
		as_columnaflechadw = as_nombresort
	
	case 'numpresup_t'
		choose case adw_dw
			case dw_show20            ; as_expresionordenacion = 'AnoPresup $, NumPresup $'
			case dw_show30            ; as_expresionordenacion = 'numpresup $'
		end choose

	case 'numot', 'numot_t', 'numcita_t'
		choose case adw_dw
			case dw_show10, dw_s10det ; as_expresionordenacion = 'AnoCita $, NumCita $'
			case dw_show20            ; as_expresionordenacion = 'AnoPresup $, NumPresup $'
			case dw_show30, dw_s30det ; as_expresionordenacion = 'AnoOT $, NumOT $'
		end choose
		choose case adw_dw
			case dw_show10, dw_s10det ; as_nombresort    = 'numcita_t'
			case dw_show20            ; as_nombresort    = 'numpresup_t'
			case dw_show30, dw_s30det ; as_nombresort    = 'numot_t'
		end choose
		as_columnaflechadw = as_nombresort

	case 'tooltip_t'
		choose case adw_dw
			case dw_show10, dw_s10det ; as_expresionordenacion = 'tooltip $, AnoCita $, NumCita $'
			case dw_show30, dw_s30det ; as_expresionordenacion = 'tooltip $, AnoOT $, NumOT $'
		end choose
		as_nombresort = ''
		as_columnaflechadw = as_nombresort

	case 'bitmap_cortesia_t'
		choose case adw_dw
			case dw_show10            ; as_expresionordenacion = 'tienevehcortesia $, AnoCita $, NumCita $'
		end choose

	case 'ttotcab_haysms_t'
		choose case adw_dw
			case dw_show10, dw_s10det ; as_expresionordenacion = 'ttotcab_haysms $, AnoCita $, NumCita $'
			case dw_show20            ; as_expresionordenacion = 'ttotcab_haysms $, AnoPresup $, NumPresup $'
			case dw_show30, dw_s30det ; as_expresionordenacion = 'ttotcab_haysms $, AnoOT $, NumOT $'
		end choose

	case 'ttotcab_fechagarantia_t'
		choose case adw_dw
			case dw_show30, dw_s30det
				if as_ascdesc = 'A' then
					ls_expresion = "if (isNull(ttotcab_fechagarantia), Date('31/12/2099'), ttotcab_fechagarantia) "
				else
					ls_expresion = "if (isNull(ttotcab_fechagarantia), Date('01/01/1900'), ttotcab_fechagarantia) "
				end if
				as_expresionordenacion = ls_expresion + '$, AnoOT $, NumOT $'
		end choose
	
	case 'desversion_t'
		choose case adw_dw
			case dw_s10det            ; as_expresionordenacion = 'desversion $'
			case dw_show30, dw_s30det ; as_expresionordenacion = 'desversion $'
		end choose

	case 'vienedeunacita_t'
		choose case adw_dw
			case dw_s30det            ; as_expresionordenacion = 'vienedeunacita $'
		end choose
	
	case 'ttotintervencion_tiempoasignado_comp_t'
		choose case adw_dw
			case dw_s10det            ; as_expresionordenacion = 'sumtiempoasignado_comp $'
		end choose

end choose

if as_expresionordenacion > '' then
	choose case adw_dw
		case dw_s10det ; as_expresionordenacion += ', Numinterno $, intervencion_comp A, AlturaRow A'
		case dw_s30det ; as_expresionordenacion += ', Numinterno $, intervencion_comp A, AlturaRow A'
	end choose
	as_expresionordenacion = gnv_app.inv_string.of_globalreplace(as_expresionordenacion, '$', as_ascdesc)
end if


end subroutine

public function boolean of_hay_hscrollbar (datawindow adw_source);// 0000635  SJP  21-5-2014
// Si HScrollBar = true y el límite derecho de los objetos del dw es mayor al ancho del dw, la barra de scrollbar se muestra
// Se trabaja en Pixels

string	ls_inf
string	ls_objetos[]
string	ls_objeto
string	ls_exp
string	ls_tipo

long		ll_iobjeto
long		ll_x
long		ll_w
long		ll_x2
long		ll_postab

long		ll_maxx2
long		ll_anchodw

if not adw_source.hscrollbar then return false

ls_inf = adw_source.describe('datawindow.objects')
gnv_app.inv_string.of_parsetoarray(ls_inf, '~t', ref ls_objetos)

ll_maxx2 = 0
ll_anchodw = UnitsToPixels (adw_source.width, XUnitsToPixels!)

for ll_iobjeto = 1 to upperbound(ls_objetos)
	ls_objeto = ls_objetos[ll_iobjeto]
	ls_inf = adw_source.describe(ls_objeto + '.visible')
	if ls_inf = '?' then continue
	
	if long(ls_inf) > 0 then
	else
		continue
	end if
	
	ls_tipo = lower(adw_source.describe(ls_objeto + '.type'))
	choose case lower(ls_tipo)
		case 'column', 'compute', 'rectangle', 'text', 'bitmap'
			ls_inf = adw_source.describe(ls_objeto + '.x')
			ll_x = long(ls_inf)
			ls_inf = adw_source.describe(ls_objeto + '.width')
			ll_w = long(ls_inf)
			ll_x2 = ll_x + ll_w - 1
		case 'line'
		case else
			continue
	end choose
	if ll_x2 > ll_maxx2 then ll_maxx2 = ll_x2
	if ll_x2 > ll_anchodw then exit
next

return (ll_x2 > ll_anchodw)

end function

public subroutine of_set_fleetbox ();/////////////////////////////////////////////////////////////////////////////////
// DESCRIPCION	: 	Habilita / Deshabilita el botón fleetbox 
//
// PARAMETROS	: None	
//
// RETORNO		: None
//
// HISTORIAL	: Versión inicial
/////////////////////////////////////////////////////////////////////////////////
// Ref.:	0000164
// Autor:	FAB
// Fecha:	04/09/2014
/////////////////////////////////////////////////////////////////////////////////
Boolean	lb_visible

Boolean	lb_alertContent		// FAB - 0003038 - 13/10/2015 

Long		ll_count

String	ls_emp					// FAB - 0003038 - 13/10/2015 
String	ls_tal					// FAB - 0003038 - 13/10/2015 

/////////////////////////////////////////////////////////////////////////////////

lb_visible = TRUE
if (this.ib_pinned) then
	
else
	lb_visible = false
end if

if lb_visible then
	if ( IsValid(inv_fleetbox) ) then
	else
		inv_manager.of_create_mantoBase(inv_fleetbox, "n_cst_fleetbox")
		inv_manager.of_init_nvocache()	//JMR:14.10.2014 0001430
		inv_manager.inv_nvoCache.of_register("n_cst_fleetbox", inv_fleetbox)		
	end if
	
	// FAB - 0003038 - 13/10/2015 >>>>>>>>>>
	ls_emp = gnv_app.inv_empwrkmanager.is_empwrk
	ls_tal = gnv_app.inv_empwrkmanager.is_talwrk
	if ls_emp > '' then
		if ( inv_fleetbox.is_empWrk = ls_emp and inv_fleetbox.is_talWrk = ls_tal ) then
		else
			inv_fleetbox.of_set_environment(ls_emp, ls_tal)
		end if
	end if
	
	if inv_fleetbox.of_check_activo () = SUCCESS and inv_fleetbox.of_check_acceso() = SUCCESS then
	else
		lb_visible = FALSE
	end if
	
	if lb_visible then
	// Comprobar que hay registros con alertas !!
	
		// FAB - 0003038 - 13/10/2015 >>>>>>>>>>
		if ls_emp > '' then
			lb_visible = inv_fleetbox.of_check_alerts (ls_emp, ls_tal, ref lb_alertContent)
		else
			lb_visible = inv_fleetbox.of_check_alerts (ref lb_alertContent)
		end if
		
		if lb_visible then
			if lb_alertContent then
				of_init_hoverbutton (uo_fleetbox	, 'toolbar24_fleetboxRed.png','','FLETBOXSTATUS')  
			else
				of_init_hoverbutton (uo_fleetbox	, 'toolbar24_fleetbox.png','','FLETBOXSTATUS')  
			end if
		end if
		
	
//		SELECT COUNT(*) 
//		INTO :ll_count
//		FROM ttOTCab  , ttOTCargo
//		WHERE ttOTCab.Emp = :inv_manager.is_empWrk
//				and ttOTCab.Taller = :inv_manager.is_talWrk
//				and ttOTCab.Anulada = 0
//				and ttOTCab.Cerrada = 0
//				and ttOTCab.Status <= 30
//				and ttOTCargo.Emp = ttOTCab.Emp
//				And ttOTCargo.NumInterno = ttOTCab.NumInterno
//				and ttOTCargo.FBXCargoFleetbox > 0
//		USING SQLCA;
//	
//		SQLCA.of_commit()
//		
//		if ll_count > 0 then
//		else
//			lb_visible = FALSE
//		end if
		// FAB - 0003038 - 13/10/2015 <<<<<<<<<<
	end if
end if

uo_fleetbox.visible = lb_visible
end subroutine

public subroutine of_launch_fleetbox ();/////////////////////////////////////////////////////////////////////////////////
// DESCRIPCION	: Lanzamiento del gestor de alertas de fleetbox
//
// PARAMETROS	: Ninguno
//
// RETORNO		: Ninguno
//
// HISTORIAL	: Versión inicial
/////////////////////////////////////////////////////////////////////////////////
// Ref.:	0000164
// Autor:	FAB
// Fecha:	04/09/2014
/////////////////////////////////////////////////////////////////////////////////
String		ls_empWrk
String		ls_talWrk

if ( IsValid(inv_fleetbox) ) then
else
	inv_manager.of_create_mantoBase(inv_fleetbox, "n_cst_fleetbox")
	inv_manager.inv_nvoCache.of_register("n_cst_fleetbox", inv_fleetbox)		
end if

if isvalid(inv_manager) then 
	ls_empWrk = inv_manager.is_empwrk
	ls_talWrk = inv_manager.is_talwrk
else
	ls_empWrk = gnv_app.inv_empwrkmanager.is_empwrk
	ls_talWrk = gnv_app.inv_empwrkmanager.is_talwrk
end if

if ( inv_fleetbox.is_empWrk = ls_empWrk and inv_fleetbox.is_talWrk = ls_talWrk ) then
else
	inv_fleetbox.of_set_environment(ls_empWrk, ls_talWrk)
end if

inv_fleetbox.of_open_alerts()

event ue_parentnotify('FLEETBOXREFRESH')				// FAB - 0003038 - 13/10/2015 
end subroutine

public subroutine of_init_multitaller ();/////////////////////////////////////////////////////////////////////////////////
// DESCRIPCION	: 	Inicialización Objeto Multi taller
//
// PARAMETROS	: 	None
//
// RETORNO		: 	None
//
// HISTORIAL	: Versión inicial
/////////////////////////////////////////////////////////////////////////////////
// Ref.:	0002566
// Autor:	FAB
// Fecha:	22/09/2015 
/////////////////////////////////////////////////////////////////////////////////
gnv_app.inv_nvoCache.of_register('n_cst_multiTallerManager',inv_multiTaller)
end subroutine

public subroutine of_check_multitaller (boolean ab_check);/////////////////////////////////////////////////////////////////////////////////
// DESCRIPCION	: 	Indica si se debe tener en cuenta multitaller 
//						en el caso de estar activo para la empresa en curso
//
// PARAMETROS	: 	ab_check
//
// RETORNO		: 	None
//
// HISTORIAL	: Versión inicial
/////////////////////////////////////////////////////////////////////////////////
// Ref.:	0002566
// Autor:	FAB
// Fecha:	22/09/2015
/////////////////////////////////////////////////////////////////////////////////
ib_check_multitaller = ab_check
end subroutine

public function boolean of_check_multitaller (string as_emp);/////////////////////////////////////////////////////////////////////////////////
// DESCRIPCION	: 	Indica en caso de control de multitaller, si la empresa
//						tiene activo multitaller
//
// PARAMETROS	: 	as_emp
//
// RETORNO		: 	TRUE | FALSE
//
// HISTORIAL	: Versión inicial
/////////////////////////////////////////////////////////////////////////////////
// Ref.:	0002566
// Autor:	FAB
// Fecha:	22/09/2015
/////////////////////////////////////////////////////////////////////////////////
Boolean		lb_multitaller

/////////////////////////////////////////////////////////////////////////////////


if NOT ib_check_multitaller then return FALSE

of_init_multitaller( )

if isvalid(inv_multitaller) then	lb_multitaller	= inv_multitaller.of_check_multitaller( as_emp )

return lb_multitaller
end function

public function long of_retrieve (string as_emp, string as_tal, n_ds ads_source);/////////////////////////////////////////////////////////////////////////////////
// DESCRIPCION	: 	Lectura con check Multitaller (Consolidado) 
//
// PARAMETROS	: 	as_emp
//						as_tal
//						ads_source
//
// RETORNO		: 	Rows
//
// HISTORIAL	: Versión inicial
/////////////////////////////////////////////////////////////////////////////////
// Ref.:	0002566
// Autor:	FAB
// Fecha:	22/09/2015
/////////////////////////////////////////////////////////////////////////////////
any			la_params[]

return of_retrieve (as_emp, as_tal, ads_source, la_params)

end function

public function long of_retrieve (string as_emp, string as_tal, n_ds ads_source, any aa_params[]);/////////////////////////////////////////////////////////////////////////////////
// DESCRIPCION	: 	Lectura con check Multitaller (Consolidado) 
//
// PARAMETROS	: 	as_emp
//						as_tal
//						ads_source
//						aa_params
//
// RETORNO		: 	Rows
//
// HISTORIAL	: Versión inicial
/////////////////////////////////////////////////////////////////////////////////
// Ref.:	0002566
// Autor:	FAB
// Fecha:	22/09/2015
/////////////////////////////////////////////////////////////////////////////////
Long			ll_rows = 0

Integer		li_parametros

/////////////////////////////////////////////////////////////////////////////////

sqlca.of_retrieve_begin( )

li_parametros = upperbound( aa_params )
choose case li_parametros
	case 0
		ads_source.of_Retrieve (as_emp, as_tal)
	case 1
		ads_source.of_Retrieve (as_emp, as_tal, aa_params[1])
	case 2
		ads_source.of_Retrieve (as_emp, as_tal, aa_params[1], aa_params[2])
	case 3
		ads_source.of_Retrieve (as_emp, as_tal, aa_params[1], aa_params[2], aa_params[3])
	case 4
		ads_source.of_Retrieve (as_emp, as_tal, aa_params[1], aa_params[2], aa_params[3], aa_params[4])
	case 5
		ads_source.of_Retrieve (as_emp, as_tal, aa_params[1], aa_params[2], aa_params[3], aa_params[4], aa_params[5])
end choose

sqlca.of_retrieve_end( )

if of_check_multitaller( as_emp ) then
	if isvalid(inv_multitaller) then
		inv_multitaller.of_set_entorno (as_emp, as_tal)
		inv_multitaller.of_retrieve_consolidado( ads_source, aa_params )
	end if
end if

ll_rows	= ads_source.rowcount()

return ll_rows
end function

on u_calendar_ot.create
int iCurrent
call super::create
this.uo_servicebus=create uo_servicebus
this.uo_solicitud=create uo_solicitud
this.uo_fleetbox=create uo_fleetbox
this.dw_datosmail=create dw_datosmail
this.uo_pacteoffice=create uo_pacteoffice
this.dw_s10det=create dw_s10det
this.dw_datostiempo=create dw_datostiempo
this.dw_s30det=create dw_s30det
this.dw_datossms=create dw_datossms
this.dw_datosparada=create dw_datosparada
this.dw_datoscli=create dw_datoscli
this.dw_show20=create dw_show20
this.r_back=create r_back
this.dw_show30=create dw_show30
this.st_fondo=create st_fondo
this.dw_show10=create dw_show10
this.st_tooltip=create st_tooltip
this.uo_keyreader=create uo_keyreader
this.uo_other=create uo_other
this.uo_cargacita=create uo_cargacita
this.uo_mecanicos=create uo_mecanicos
this.uo_pin=create uo_pin
this.uo_search=create uo_search
this.uo_view_backorder=create uo_view_backorder
this.uo_robef=create uo_robef
this.st_title=create st_title
this.uo_nuevo=create uo_nuevo
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.uo_servicebus
this.Control[iCurrent+2]=this.uo_solicitud
this.Control[iCurrent+3]=this.uo_fleetbox
this.Control[iCurrent+4]=this.dw_datosmail
this.Control[iCurrent+5]=this.uo_pacteoffice
this.Control[iCurrent+6]=this.dw_s10det
this.Control[iCurrent+7]=this.dw_datostiempo
this.Control[iCurrent+8]=this.dw_s30det
this.Control[iCurrent+9]=this.dw_datossms
this.Control[iCurrent+10]=this.dw_datosparada
this.Control[iCurrent+11]=this.dw_datoscli
this.Control[iCurrent+12]=this.dw_show20
this.Control[iCurrent+13]=this.r_back
this.Control[iCurrent+14]=this.dw_show30
this.Control[iCurrent+15]=this.st_fondo
this.Control[iCurrent+16]=this.dw_show10
this.Control[iCurrent+17]=this.st_tooltip
this.Control[iCurrent+18]=this.uo_keyreader
this.Control[iCurrent+19]=this.uo_other
this.Control[iCurrent+20]=this.uo_cargacita
this.Control[iCurrent+21]=this.uo_mecanicos
this.Control[iCurrent+22]=this.uo_pin
this.Control[iCurrent+23]=this.uo_search
this.Control[iCurrent+24]=this.uo_view_backorder
this.Control[iCurrent+25]=this.uo_robef
this.Control[iCurrent+26]=this.st_title
this.Control[iCurrent+27]=this.uo_nuevo
end on

on u_calendar_ot.destroy
call super::destroy
destroy(this.uo_servicebus)
destroy(this.uo_solicitud)
destroy(this.uo_fleetbox)
destroy(this.dw_datosmail)
destroy(this.uo_pacteoffice)
destroy(this.dw_s10det)
destroy(this.dw_datostiempo)
destroy(this.dw_s30det)
destroy(this.dw_datossms)
destroy(this.dw_datosparada)
destroy(this.dw_datoscli)
destroy(this.dw_show20)
destroy(this.r_back)
destroy(this.dw_show30)
destroy(this.st_fondo)
destroy(this.dw_show10)
destroy(this.st_tooltip)
destroy(this.uo_keyreader)
destroy(this.uo_other)
destroy(this.uo_cargacita)
destroy(this.uo_mecanicos)
destroy(this.uo_pin)
destroy(this.uo_search)
destroy(this.uo_view_backorder)
destroy(this.uo_robef)
destroy(this.st_title)
destroy(this.uo_nuevo)
end on

event resize;call super::resize;if not ib_ignoreresize then
	of_resize()	
end if
end event

event constructor;call super::constructor;is_opcion[1] = ''
is_opcion[2] = ''
is_opcion[3] = ''

is_opckey[1] = ''
is_opckey[2] = ''
is_opckey[3] = ''

ii_vista            = 1
is_key              = ''
ib_pinned           = true

st_tooltip.visible  = false
st_tooltip.height   = PixelsToUnits (14, YPixelsToUnits!) + 2
dw_datoscli.visible = false
dw_datoscli.SetTransObject (sqlca)
dw_datoscli.InsertRow(0)

// IPS: 17.05.2006 - 13911608044 - Parada Intervencion
dw_datosparada.visible = false
dw_datosparada.SetTransObject (sqlca)

// IPS: 10.07.2006 - SMS
dw_datossms.visible = false
dw_datossms.SetTransObject (sqlca)

// JMR: 15.02.2007 - Fichajes incompletos
dw_datostiempo.visible = false
dw_datostiempo.SetTransObject (sqlca)

//JMR:19.7.2013 40801435244
dw_datosmail.visible = false
dw_datosmail.SetTransObject (sqlca)

uo_mecanicos.visible = false
end event

event destructor;call super::destructor;//JMR:22.7.2013 40801435244 - Parece no ejecutar el destructor de los objetos de forma automática!
//Pasamos todo el contenido que había al of_destroy, al que invocaremos desde el panel parent

of_destroy()

end event

type uo_servicebus from uo_solicitudcitatallerweb within u_calendar_ot
integer x = 1531
integer y = 896
integer taborder = 50
end type

event constructor;call super::constructor;this.visible = false
end event

on uo_servicebus.destroy
call uo_solicitudcitatallerweb::destroy
end on

event ue_busmessage;call super::ue_busmessage;uo_solicitud.of_onmessage()
end event

type uo_solicitud from u_hoverbutton_solicitud within u_calendar_ot
string tag = "TRANSLATE=N;DENIED=N"
integer x = 1111
integer width = 128
integer height = 108
integer taborder = 40
boolean bringtotop = true
end type

on uo_solicitud.destroy
call u_hoverbutton_solicitud::destroy
end on

event hoverbutton_clicked;call super::hoverbutton_clicked;if isvalid(iuo_panel) then
	if iuo_panel.of_isbussy() then return
end if

if isvalid(iuo_panel_cortesia) then
	if iuo_panel_cortesia.of_isbussy() then return
end if

uo_servicebus.of_click( )

end event

event mousewithin;call super::mousewithin;of_hide_dwdatoscli (true)

of_lbuttonup()

end event

type uo_fleetbox from u_hoverbutton_toolbar within u_calendar_ot
string tag = "TRANSLATE=N"
integer x = 279
integer y = 4
integer width = 128
integer height = 108
integer taborder = 60
boolean bringtotop = true
end type

event hoverbutton_clicked;call super::hoverbutton_clicked;Post of_launch_fleetbox()
end event

on uo_fleetbox.destroy
call u_hoverbutton_toolbar::destroy
end on

type dw_datosmail from datawindow within u_calendar_ot
event ue_mousemove pbm_mousemove
integer y = 2644
integer width = 1143
integer height = 204
integer taborder = 61
string title = "none"
string dataobject = "dw_aux_ttotcab_hayemail"
boolean livescroll = true
end type

event ue_mousemove;this.visible = false
end event

type uo_pacteoffice from u_hoverbutton_toolbar within u_calendar_ot
string tag = "TRANSLATE=N;DENIED=N"
integer x = 297
integer y = 4
integer width = 128
integer height = 108
integer taborder = 40
boolean bringtotop = true
end type

event hoverbutton_clicked;call super::hoverbutton_clicked;of_pacteoffice ()
end event

event constructor;call super::constructor;This.Visible = false

end event

on uo_pacteoffice.destroy
call u_hoverbutton_toolbar::destroy
end on

event mousewithin;call super::mousewithin;of_hide_dwdatoscli (true)

end event

type dw_s10det from u_dw within u_calendar_ot
event ue_mousemove2 pbm_mousemove
integer y = 1560
integer width = 1367
integer height = 300
integer taborder = 31
boolean bringtotop = true
string dataobject = "dw_calen_ttotcab10_detalle"
boolean hscrollbar = true
boolean border = false
borderstyle borderstyle = stylebox!
end type

event ue_mousemove2;if mod(flags, 2) = 0 and ib_dragflag then
	ib_dragflag = false
end if

inv_Tooltip.RelayMsg(This)
end event

event clicked;Long ll_HeaderHeight
Long ll_DetailHeight
Long ll_DragY
Long ll_FirstRow
Long ll_codigo
Long ll_find
long ll_descen

String ls_column

u_dw ldw_this
//Override

if ( IsValid(inv_plancortesia_popup) ) then inv_plancortesia_popup.of_stop()	

il_last_row_clicked = row
il_row_flow         = row

if isvalid(dwo) then
	ls_column = lower(dwo.name)
else
	ls_column = lower(inv_manager.of_get_paramdata (st_tooltip.tag,'COLUMNNAME'))
end if

if row > 0 then
	Parent.Event ue_parentnotify ('CLICKONROW')	
	ScrollToRow(row)
	choose case ls_column
		case 'r_aviso','compute_aviso','tooltip','nada_t'	// IPS:11.07.2006 - Añado 'nada_t' 
			of_edit_status (row)
			
		case 'p_cortesia'
			of_show_cortesia(row, this)
			
		case else
			inv_manager.of_param_Reset()
			inv_manager.il_dragbegin_row        = 0
			inv_manager.il_initial_aquien       = GetitemNumber (row,'clientefac')
			inv_manager.il_initial_porque       = GetitemNumber (row,'numinterno')
			inv_manager.is_initial_porquetipo   = 'TTOTCAB'
			inv_manager.is_initial_dequien      = gnv_app.inv_usuario.is_uid
			inv_manager.id_initial_iniciofecha  = of_get_today()
			inv_manager.is_initial_Tabla        = 'TTOTCAB10'
			inv_manager.is_dragemp        = GetitemString (row,'emp')
			inv_manager.il_dragnuminterno = GetitemNumber (row,'numinterno')
			inv_manager.of_clicked (inv_manager.DD_otcurso,inv_manager.is_dragemp,inv_manager.il_dragnuminterno)
			inv_timer.Start (0.25)
			ib_dragflag     = true
			il_last_dragx   = this.PointerX() 
			il_last_dragy   = this.PointerY()	
			post ScrollToRow (row)
	end choose
else
	// No puede provenir de un click en el objecto st_tooltip, por lo que "dwo" es una referencia correcta
	if is_columnsplitting > '' and is_currentcolumn  = '' then
		Object.DataWindow.Pointer = '..\recursos\cur\ve_sizec.CUR'
		il_xposclick = xpos
		ib_splitting = true
		of_splitting (dw_s10det, is_columnsplitting, xpos)
		return
	end if

	if ls_column = 'datawindow' then return
	// 0000635  SJP  20-5-2014
	if pos(ls_column, 'l_dragsource_') > 0 then return   // El rectángulo indicador de fila actual produce clicked con row=0, interpretándose erróneamente como una ordenación
	// ---
	
	inv_manager.of_clicked (0,'',0)
	ib_dragflag = false
	if GetRow() > 0 then
		ll_codigo = GetItemNumber (GetRow(),'numinterno')
	end if
	If lower(mid(trim(ls_column), len(trim(ls_column)) - 2, 2)) = '_t' Then of_resize() 
	of_mouse_capture()
	parent.of_set_orderby (ls_column)
	of_mouse_release()
	
end if


if row > 0 Then 
	Post of_getrow( true )	
end if

if ll_codigo > 0 then
	ll_find = Find ('numinterno = ' + string (ll_codigo),1,RowCount())
	ScrolltoRow (ll_find)
end if


end event

event doubleclicked;call super::doubleclicked;if isvalid(iuo_panel) then
	if iuo_panel.of_isbussy() then return
end if

if isvalid(iuo_panel_cortesia) then
	if iuo_panel_cortesia.of_isbussy() then return
end if

if inv_manager.ib_deniedot10modify then
else
	parent.event ue_parentnotify('DOUBLECLICK')
	of_edit (il_last_row_clicked)
end if
end event

event dragdrop;call super::dragdrop;if source = this then
else
	ib_ignoremousemove = true
	post of_dragdrop ()
end if 

inv_manager.of_dragcero()
end event

event dragenter;call super::dragenter;this.SetFocus()
if source = this then
	source.DragIcon = is_tarea_icono
else
	if inv_manager.of_isdragdropvalid(ii_dragid) then
		source.DragIcon = is_tarea_icono
		of_show_dragtarget (this,true)
	else
		source.DragIcon = is_nodrop_icono
	end if
end if

end event

event dragleave;call super::dragleave;source.DragIcon = inv_manager.is_dragicon
of_show_dragtarget (this,false)	
end event

event losefocus;call super::losefocus;ib_splitting        = false
is_columnsplitting  = ''
il_last_row_tooltip = 0

of_hide_dwdatoscli()

this.modify ('lineavert.visible="0"')

end event

event resize;call super::resize;post of_getrow(true)
end event

event rowfocuschanged;//Override

if parent.ib_retrieving = false then
	SetRedraw (true)
end if

if (ib_flowactive) and not (ib_retrieving) then
	il_row_flow = currentrow
	inv_timer.Start (0.35)	
end if

of_getrow(true)
end event

event scrollhorizontal;call super::scrollhorizontal;parent.il_scrollpos = scrollpos

of_getrow(false)
post of_getrow(true)

end event

event scrollvertical;call super::scrollvertical;il_vscrollposition = scrollpos
of_getrow(false)
post of_getrow(true)
end event

event lbuttonup;//Override

of_lbuttonup()

this.Drag (Cancel!)

if this.Object.DataWindow.Syntax.Modified = 'yes' then
	this.Modify("DataWindow.Syntax.Modified=No")
	Post of_Resize()
	This.Post SetFocus()
end if
end event

event lbuttondown;//
end event

event key;call super::key;if key = KeyEnter! and GetRow () > 0 then
	of_edit(GetRow())
	return
end if
end event

event ue_mousemove;call super::ue_mousemove;// =====
// Ref.: 18741556467 - jdm - 22/05/2007
String  ls_bandAtPointer
String  ls_objectAtPointer
String  ls_objectName
BOOLEAN lb_hayDrag

ls_bandAtPointer = this.GetBandAtPointer()
ls_objectAtPointer = this.GetObjectAtPointer()
ls_objectName = Upper(Mid(ls_objectAtPointer, 1, Pos(ls_objectAtPointer, "~t") - 1))

if ( (row > 0) and (ls_objectName = "P_CORTESIA") ) then
	if ( ib_dragFlag ) then
		lb_hayDrag = (abs(il_last_dragX - this.PointerX()) > 10)
		lb_hayDrag = (abs(il_last_dragY - this.PointerY()) > 10)
		if ( lb_hayDrag ) then
			ib_dragFlag = FALSE
			this.DragIcon = '..\recursos\ico\drag_tgagendatarea.ico'
			inv_manager.is_dragIcon = this.dragIcon
			inv_manager.il_dragBegin_source = parent.ii_dragId
			inv_manager.of_set_noTesTimer(FALSE)
			of_show_dragsource(this, il_last_row_clicked, TRUE)		
			Drag(Begin!)
		else
			il_last_dragX = this.PointerX()
			il_last_dragY = this.PointerY()
		end if
		return
	end if
	
	// Mostramos popup de vehículo de cortesia asociada a la cita
	if ( this.GetItemNumber(row, "tienevehcortesia") > 0 ) then
		if ( il_popup_row <> row ) then
			of_prepare_popup(row, this)
			inv_planCortesia_popup.ib_dragFollow = FALSE
			inv_plancortesia_popup.of_start(TRUE)
			il_popup_row = row
		end if
	else
		of_hide_popup()
		inv_plancortesia_popup.il_row_popup = 0
		il_popup_row = 0
	end if
	
else
	of_init_plancortesia_popup()
	inv_planCortesia_popup.of_stop()
	inv_plancortesia_popup.il_row_popup = 0
	il_popup_row = 0
	
	if not ib_ignoremousemove then
		of_mousemove(dw_s10det, xpos, ypos, row)	
	end if
end if
// =====


end event

type dw_datostiempo from datawindow within u_calendar_ot
event ue_mousemove pbm_mousemove
integer y = 2880
integer width = 1143
integer height = 164
integer taborder = 41
string title = "none"
string dataobject = "dw_consulta_ttotfichado_pdte"
end type

event ue_mousemove;this.visible = false
end event

type dw_s30det from u_dw within u_calendar_ot
event ue_mousemove2 pbm_mousemove
integer y = 1232
integer width = 1367
integer height = 300
integer taborder = 21
boolean bringtotop = true
string dataobject = "dw_calen_ttotcab30_detalle"
boolean hscrollbar = true
boolean border = false
borderstyle borderstyle = stylebox!
end type

event ue_mousemove2;if mod(flags, 2) = 0 and ib_dragflag then
	ib_dragflag = false
end if

inv_Tooltip.RelayMsg(This)
end event

event clicked;Long ll_HeaderHeight
Long ll_DetailHeight
Long ll_DragY
Long ll_FirstRow
Long ll_codigo
Long ll_find
long ll_descen

String ls_column

u_dw ldw_this
//Override

il_last_row_clicked = row
il_row_flow         = row

if isvalid(dwo) then
	ls_column = lower(dwo.name)
else
	ls_column = lower(inv_manager.of_get_paramdata (st_tooltip.tag,'COLUMNNAME'))
end if

if row > 0 then
	Parent.Event ue_parentnotify ('CLICKONROW')	
	ScrollToRow(row)
	choose case ls_column
		case 'r_aviso','compute_aviso','tooltip','nada_t','p_acabada'	// IPS:11.07.2006 - Añado 'nada_t' 
			of_edit_status (row)
		case 'p_cortesia'
			of_show_cortesia(row, this)
		case 'p_piezaenespera'
			of_show_backorder(row)
		case else
			inv_manager.of_param_Reset()
			inv_manager.il_dragbegin_row        = 0
			inv_manager.il_initial_aquien       = GetitemNumber (row,'clientefac')
			inv_manager.il_initial_porque       = GetitemNumber (row,'numinterno')
			inv_manager.is_initial_porquetipo   = 'TTOTCAB'
			inv_manager.is_initial_dequien      = gnv_app.inv_usuario.is_uid
			inv_manager.id_initial_iniciofecha  = of_get_today()
			inv_manager.is_initial_Tabla        = 'TTOTCAB30'
			inv_manager.is_dragemp        = GetitemString (row,'emp')
			inv_manager.il_dragnuminterno = GetitemNumber (row,'numinterno')
			inv_manager.of_clicked (inv_manager.DD_otcurso,inv_manager.is_dragemp,inv_manager.il_dragnuminterno)
			inv_timer.Start (0.25)
			ib_dragflag     = true
			il_last_dragx   = this.PointerX() 
			il_last_dragy   = this.PointerY()	
			post ScrollToRow (row)
	end choose
else
	// No puede provenir de un click en el objecto st_tooltip, por lo que "dwo" es una referencia correcta
	if is_columnsplitting > '' and is_currentcolumn  = '' then
		Object.DataWindow.Pointer = '..\recursos\cur\ve_sizec.CUR'
		il_xposclick = xpos
		ib_splitting = true
		of_splitting (dw_s30det, is_columnsplitting, xpos)
		return
	end if

	if ls_column = 'datawindow' then return
	// 0000635  SJP  20-5-2014
	if pos(ls_column, 'l_dragsource_') > 0 then return   // El rectángulo indicador de fila actual produce clicked con row=0, interpretándose erróneamente como una ordenación
	// ---
	
	inv_manager.of_clicked (0,'',0)
	ib_dragflag = false
	if GetRow() > 0 then
		ll_codigo = GetItemNumber (GetRow(),'numinterno')
	end if
	If lower(mid(trim(ls_column), len(trim(ls_column)) - 2, 2)) = '_t' Then of_resize() 
	of_mouse_capture()
	parent.of_set_orderby (ls_column)
	of_mouse_release()
	
end if


if row > 0 Then 
	Post of_getrow( true )	
end if

if ll_codigo > 0 then
	ll_find = Find ('numinterno = ' + string (ll_codigo),1,RowCount())
	ScrolltoRow (ll_find)
end if


end event

event destructor;call super::destructor;if isvalid (ids_otstatus) then
	destroy (ids_otstatus)
end if
end event

event doubleclicked;call super::doubleclicked;if isvalid(iuo_panel) then
	if iuo_panel.of_isbussy() then return
end if

if isvalid(iuo_panel_cortesia) then
	if iuo_panel_cortesia.of_isbussy() then return
end if

if inv_manager.ib_deniedot30modify then
else
	parent.event ue_parentnotify('DOUBLECLICK')
	of_edit (il_last_row_clicked)
end if
end event

event dragdrop;call super::dragdrop;if source = this then
else
	ib_ignoremousemove = true
	post of_dragdrop ()
end if 

inv_manager.of_dragcero()
end event

event dragenter;call super::dragenter;if source = this then
	source.DragIcon = is_ttotcab_icono //'..\recursos\ico\nodrop.ico'
else
	this.SetFocus()
	if inv_manager.of_isdragdropvalid(ii_dragid) then
		source.dragicon = is_ttotcab_icono
		of_show_dragtarget (this,true)	
	else
		source.DragIcon = is_nodrop_icono
	end if
end if

end event

event dragleave;call super::dragleave;source.DragIcon = inv_manager.is_dragicon
of_show_dragtarget (this,false)	
end event

event losefocus;call super::losefocus;ib_splitting        = false
is_columnsplitting  = ''
il_last_row_tooltip = 0

of_hide_dwdatoscli()

this.modify ('lineavert.visible="0"')

of_losefocus()
end event

event rowfocuschanged;//Override

if parent.ib_retrieving = false then
	SetRedraw (true)
end if

if (ib_flowactive) and not (ib_retrieving) then
	il_row_flow = currentrow
	inv_timer.Start (0.35)	
end if

of_getrow(true)
end event

event scrollhorizontal;call super::scrollhorizontal;parent.il_scrollpos = scrollpos

of_getrow(false)
post of_getrow(true)

end event

event lbuttonup;//Override

of_lbuttonup()

this.Drag (Cancel!)

if this.Object.DataWindow.Syntax.Modified = 'yes' then
	this.Modify("DataWindow.Syntax.Modified=No")
	Post of_Resize()
	This.Post SetFocus()
end if
end event

event lbuttondown;//
end event

event key;call super::key;if key = KeyEnter! and GetRow () > 0 then
	of_edit(GetRow())
	return
end if
end event

event ue_mousemove;call super::ue_mousemove;if not ib_ignoremousemove then
	of_mousemove (dw_s30det, xpos, ypos, row)
end if
end event

event scrollvertical;call super::scrollvertical;il_vscrollposition = scrollpos
of_getrow(false)
post of_getrow(true)
end event

event resize;call super::resize;post of_getrow(true)
end event

type dw_datossms from datawindow within u_calendar_ot
event ue_mousemove pbm_mousemove
integer y = 2428
integer width = 1143
integer height = 204
integer taborder = 51
string title = "none"
string dataobject = "dw_aux_ttotcab_haysms"
boolean livescroll = true
end type

event ue_mousemove;this.visible = false
end event

type dw_datosparada from datawindow within u_calendar_ot
event ue_mousemove pbm_mousemove
integer y = 2268
integer width = 1143
integer height = 140
integer taborder = 41
string title = "none"
string dataobject = "dw_aux_ttotintervencion_parada"
end type

event ue_mousemove;this.visible = false

end event

type dw_datoscli from datawindow within u_calendar_ot
event ue_mousemove pbm_mousemove
integer y = 1956
integer width = 1143
integer height = 268
integer taborder = 31
string title = "none"
string dataobject = "dw_aux_datoscli"
end type

event ue_mousemove;this.visible = false
end event

type dw_show20 from u_dw within u_calendar_ot
event ue_mousemove2 pbm_mousemove
integer y = 520
integer width = 1367
integer height = 376
integer taborder = 40
boolean bringtotop = true
string dataobject = "dw_calen_ttotcab20_abierta"
boolean border = false
borderstyle borderstyle = stylebox!
end type

event ue_mousemove2;// =====
// Ref.: 18741717556 - jdm - 22/05/2007
if mod(flags, 2) = 0 and ib_dragflag then
	ib_dragflag = false
end if
// =====

inv_Tooltip.RelayMsg(This)

end event

event constructor;call super::constructor;ib_rmbmenu = false
end event

event rowfocuschanged;//Override

if parent.ib_retrieving = false then
	SetRedraw (true)
end if

if (ib_flowactive) and not (ib_retrieving) then	
	il_row_flow = currentrow
	inv_timer.Start (0.35)	
end if

of_getrow(true)
end event

event clicked;Long ll_HeaderHeight
Long ll_DetailHeight
Long ll_DragY
Long ll_FirstRow
Long ll_codigo
Long ll_find
Long ll_descen

String ls_column

u_dw ldw_this
//Override

if isvalid(dwo) then
	ls_column = lower(dwo.name)
else
	ls_column = lower(inv_manager.of_get_paramdata (st_tooltip.tag,'COLUMNNAME'))
end if

il_last_row_clicked = row
il_row_flow         = row

if row > 0 then
	Parent.Event ue_parentnotify ('CLICKONROW')
	inv_manager.of_param_Reset()
	inv_manager.il_dragbegin_row          = 0
	inv_manager.il_initial_aquien       = GetitemNumber (row,'clientefac')
	inv_manager.il_initial_porque       = GetitemNumber (row,'numinterno')
	inv_manager.is_initial_porquetipo   = 'TTOTCAB'
	inv_manager.is_initial_dequien      = gnv_app.inv_usuario.is_uid
	inv_manager.id_initial_iniciofecha  = gnv_App.inv_today.id_today
	inv_manager.is_initial_Tabla        = 'TTOTCAB20'
	inv_manager.is_dragemp        = GetitemString (row,'emp')
	inv_manager.il_dragnuminterno = GetitemNumber (row,'numinterno')
	inv_manager.of_clicked (inv_manager.DD_OTPRESUP,inv_manager.is_dragemp,inv_manager.il_dragnuminterno)
	inv_timer.Start (0.25)
	ib_dragflag     = true
	il_last_dragx   = this.PointerX() 
	il_last_dragy   = this.PointerY()
	ScrollToRow(row)
else
	// No puede provenir de un click en el objecto st_tooltip, por lo que "dwo" es una referencia correcta
	if is_columnsplitting > '' and is_currentcolumn  = '' then
		Object.DataWindow.Pointer = '..\recursos\cur\ve_sizec.CUR'
		il_xposclick = xpos
		ib_splitting = true
		of_splitting (dw_show20, is_columnsplitting, xpos)
		return
	end if

	if ls_column = 'datawindow' then return
	// 0000635  SJP  20-5-2014
	if pos(ls_column, 'l_dragsource_') > 0 then return   // El rectángulo indicador de fila actual produce clicked con row=0, interpretándose erróneamente como una ordenación
	// ---	
	
	inv_manager.of_clicked (0,'',0)
	ib_dragflag = false
	if GetRow() > 0 then
		ll_codigo = GetItemNumber (GetRow(),'numinterno')
	end if
	if ib_haygroupby then
		parent.of_set_orderby (ls_column)
	else
		if dwo.type = 'text' then
			ll_descen = 0
			if ls_column = is_lastsorted then 
				if il_lastdescen = 0 then
					ll_descen = 1
				else
					ll_descen = 0
				end if
			end if
			is_lastsorted = ls_column
			il_lastdescen = ll_descen
			ldw_this = this
			gnv_app.inv_menumanager.of_panel_setsort_unico(ldw_this,ls_column,ll_descen)
			Sort()
		end if
	end if
	If lower(mid(trim(ls_column), len(trim(ls_column)) - 2, 2)) = '_t' Then of_resize() 
end if

if row > 0 Then 
	Post of_getrow( true )	
end if

if ll_codigo > 0 then
	ll_find = Find ('numinterno = ' + string (ll_codigo),1,RowCount())
	ScrolltoRow (ll_find)
end if
		

end event

event ue_mousemove;call super::ue_mousemove;of_mousemove (dw_show20, xpos, ypos, row)

end event

event lbuttonup;//Override

of_lbuttonup()

this.Drag (Cancel!)

if this.Object.DataWindow.Syntax.Modified = 'yes' then
	this.Modify("DataWindow.Syntax.Modified=No")
	Post of_Resize()
	This.Post SetFocus()
end if
end event

event doubleclicked;if isvalid(iuo_panel) then
	if iuo_panel.of_isbussy() then return
end if

if isvalid(iuo_panel_cortesia) then
	if iuo_panel_cortesia.of_isbussy() then return
end if

if inv_manager.ib_deniedot20modify then
else
	parent.event ue_parentnotify('DOUBLECLICK')
	of_edit (il_last_row_clicked)
end if

end event

event dragdrop;call super::dragdrop;if source = this then
else
	ib_ignoremousemove = true
	post of_dragdrop ()
end if 

inv_manager.of_dragcero()
end event

event lbuttondown;//

end event

event dragenter;call super::dragenter;this.SetFocus()
if source = this then
	source.DragIcon = is_nodrop_icono
else
	if inv_manager.of_isdragdropvalid(ii_dragid) then
		source.dragicon = is_ttotcab_icono
		of_show_dragtarget (this,true)		
	else
		source.DragIcon = is_nodrop_icono
	end if
end if
end event

event dragleave;call super::dragleave;source.DragIcon = inv_manager.is_dragicon
of_show_dragtarget (this,false)	
end event

event losefocus;call super::losefocus;ib_splitting        = false
is_columnsplitting  = ''
il_last_row_tooltip = 0
of_hide_dwdatoscli()

this.modify ('lineavert.visible="0"')

of_losefocus()
end event

event key;call super::key;if key = KeyEnter! and GetRow () > 0 then
	of_edit(GetRow())
end if
end event

event scrollvertical;call super::scrollvertical;of_hide_dwdatoscli(true)	//JMR:22.7.2013 40801435244

of_getrow(false)
post of_getrow(true)
end event

event scrollhorizontal;call super::scrollhorizontal;parent.il_scrollpos = scrollpos
of_getrow(false)
post of_getrow(true)

end event

event resize;call super::resize;post of_getrow(true)
end event

type r_back from rectangle within u_calendar_ot
string tag = "TRANSLATE=N;DENIED=N"
long linecolor = 8421504
integer linethickness = 4
long fillcolor = 8421504
integer width = 2318
integer height = 112
end type

type dw_show30 from u_dw within u_calendar_ot
event ue_mousemove2 pbm_mousemove
string tag = "CHANGECURSOR=N"
integer y = 912
integer width = 1367
integer height = 300
integer taborder = 11
boolean bringtotop = true
string dataobject = "dw_calen_ttotcab30_abierta"
boolean border = false
borderstyle borderstyle = stylebox!
end type

event ue_mousemove2;if mod(flags, 2) = 0 and ib_dragflag then
	ib_dragflag = false
end if

inv_Tooltip.RelayMsg(This)
end event

event doubleclicked;call super::doubleclicked;if isvalid(iuo_panel) then
	if iuo_panel.of_isbussy() then return
end if

if isvalid(iuo_panel_cortesia) then
	if iuo_panel_cortesia.of_isbussy() then return
end if

if inv_manager.ib_deniedot30modify then
else
	parent.event ue_parentnotify('DOUBLECLICK')
	of_edit (il_last_row_clicked)
end if
end event

event rowfocuschanged;//Override

if parent.ib_retrieving = false then
	SetRedraw (true)
end if

if (ib_flowactive) and not (ib_retrieving) then
	il_row_flow = currentrow
	inv_timer.Start (0.35)	
end if

of_getrow(true)
end event

event ue_mousemove;call super::ue_mousemove;if ib_ignoremousemove = false then
	of_mousemove (dw_show30, xpos, ypos, row)
end if
end event

event dragenter;call super::dragenter;if source = this then
	source.DragIcon = is_ttotcab_icono //'..\recursos\ico\nodrop.ico'
else
	this.SetFocus()
	if inv_manager.of_isdragdropvalid(ii_dragid) then
		source.dragicon = is_ttotcab_icono
		of_show_dragtarget (this,true)	
	else
		source.DragIcon = is_nodrop_icono
	end if
end if

end event

event dragleave;call super::dragleave;source.DragIcon = inv_manager.is_dragicon
of_show_dragtarget (this,false)	
end event

event dragdrop;call super::dragdrop;if source = this then
else
	ib_ignoremousemove = true
	post of_dragdrop ()
end if 

inv_manager.of_dragcero()
end event

event clicked;Long ll_HeaderHeight
Long ll_DetailHeight
Long ll_DragY
Long ll_FirstRow
Long ll_codigo
Long ll_find
long ll_descen
Long ll_row

String ls_column

u_dw ldw_this
//Override

il_last_row_clicked = row
il_row_flow         = row

ll_row = row
if isvalid(dwo) then
	ls_column = lower(dwo.name)
else
	ls_column = lower(inv_manager.of_get_paramdata (st_tooltip.tag,'COLUMNNAME'))
end if

if ll_row > 0 then	
	Parent.Event ue_parentnotify ('CLICKONROW')
	choose case ls_column
		case 'r_aviso','compute_aviso','tooltip','nada_t','p_acabada'	// IPS:11.07.2006 - Añado 'nada_t' 
			of_edit_status (ll_row)
		case else
			inv_manager.of_param_Reset()
			inv_manager.il_dragbegin_row        = 0
			inv_manager.il_initial_aquien       = GetitemNumber (ll_row,'clientefac')
			inv_manager.il_initial_porque       = GetitemNumber (ll_row,'numinterno')
			inv_manager.is_initial_porquetipo   = 'TTOTCAB'
			inv_manager.is_initial_dequien      = gnv_app.inv_usuario.is_uid
			inv_manager.id_initial_iniciofecha  = of_get_today()
			inv_manager.is_initial_Tabla        = 'TTOTCAB30'
			inv_manager.is_dragemp        = GetitemString (ll_row,'emp')
			inv_manager.il_dragnuminterno = GetitemNumber (ll_row,'numinterno')
			inv_manager.of_clicked (inv_manager.DD_otcurso,inv_manager.is_dragemp,inv_manager.il_dragnuminterno)
			inv_timer.Start (0.25)
			ib_dragflag     = true
			il_last_dragx   = this.PointerX() 
			il_last_dragy   = this.PointerY()	
			post ScrollToRow (ll_row)
	end choose
else
	// No puede provenir de un click en el objecto st_tooltip, por lo que "dwo" es una referencia correcta
	if is_columnsplitting > '' and is_currentcolumn  = '' then
		Object.DataWindow.Pointer = '..\recursos\cur\ve_sizec.CUR'
		il_xposclick = xpos
		ib_splitting = true
		of_splitting (dw_show30, is_columnsplitting, xpos)
		return
	end if

	if ls_column = 'datawindow' then return
	
	// 0000635  SJP  20-5-2014
	if pos(ls_column, 'l_dragsource_') > 0 then return   // El rectángulo indicador de fila actual produce clicked con row=0, interpretándose erróneamente como una ordenación
	// ---

	inv_manager.of_clicked (0,'',0)
	ib_dragflag = false
	if GetRow() > 0 then
		ll_codigo = GetItemNumber (GetRow(),'numinterno')
	end if
	if ib_haygroupby then
		parent.of_set_orderby (ls_column)
	else
		choose case ls_column
			case 'tooltip_tttt'
				SetSort ('if (tooltip > "",0,1) A, statusencurso A, anoot D,numot D')
				Sort()
			case else
				if dwo.type = 'text' then
					ll_descen = 0
					if ls_column = is_lastsorted then 
						if il_lastdescen = 0 then
							ll_descen = 1
						else
							ll_descen = 0
						end if
					end if
					is_lastsorted = ls_column
					il_lastdescen = ll_descen
					ldw_this = this
					gnv_app.inv_menumanager.of_panel_setsort_unico(ldw_this,ls_column,ll_descen)
					Sort()
				end if
		end choose
	end if
	If lower(mid(trim(ls_column), len(trim(ls_column)) - 2, 2)) = '_t' Then of_resize() 
end if

if row > 0 Then 
	Post of_getrow( true )	
end if

if ll_codigo > 0 then
	ll_find = Find ('numinterno = ' + string (ll_codigo),1,RowCount())
	ScrolltoRow (ll_find)
end if



end event

event lbuttonup;//Override

of_lbuttonup()

this.Drag (Cancel!)

if this.Object.DataWindow.Syntax.Modified = 'yes' then
	this.Modify("DataWindow.Syntax.Modified=No")
	Post of_Resize()
	this.Post SetFocus()
end if

end event

event key;call super::key;if key = KeyEnter! and GetRow () > 0 then
	of_edit(GetRow())
	return
end if
end event

event destructor;call super::destructor;if isvalid (ids_otstatus) then
	destroy (ids_otstatus)
end if
end event

event losefocus;call super::losefocus;ib_splitting        = false
is_columnsplitting  = ''
il_last_row_tooltip = 0

of_hide_dwdatoscli()

this.modify ('lineavert.visible="0"')

of_losefocus()
end event

event lbuttondown;//
end event

event scrollhorizontal;call super::scrollhorizontal;parent.il_scrollpos = scrollpos
of_getrow(false)
post of_getrow(true)

end event

event scrollvertical;call super::scrollvertical;of_hide_dwdatoscli(true)	//JMR:22.7.2013 40801435244

of_getrow(false)
post of_getrow(true)
end event

event resize;call super::resize;post of_getrow(true)
end event

type st_fondo from statictext within u_calendar_ot
event mousewithin pbm_mousemove
string tag = "TRANSLATE=N"
integer width = 402
integer height = 100
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 8421504
boolean focusrectangle = false
end type

event mousewithin;of_lbuttonup()
end event

event dragdrop;inv_manager.of_dragdrop (0,0)
end event

event dragleave;source.DragIcon = inv_manager.is_dragicon
end event

type dw_show10 from u_dw within u_calendar_ot
event ue_mousemove2 pbm_mousemove
string tag = "CHANGECURSOR=N"
integer y = 128
integer width = 1367
integer height = 376
integer taborder = 20
string dataobject = "dw_calen_ttotcab10_abierta"
boolean border = false
borderstyle borderstyle = stylebox!
end type

event ue_mousemove2;// =====
// Ref.: 18741717556 - jdm - 22/05/2007
if mod(flags, 2) = 0 and ib_dragflag then
	ib_dragflag = false
end if
// =====

inv_Tooltip.RelayMsg(This)
end event

event doubleclicked;call super::doubleclicked;if isvalid(iuo_panel) then
	if iuo_panel.of_isbussy() then return
end if

if isvalid(iuo_panel_cortesia) then
	if iuo_panel_cortesia.of_isbussy() then return
end if

if inv_manager.ib_deniedot10modify then
else
	parent.event ue_parentnotify('DOUBLECLICK')
	of_edit (il_last_row_clicked)
end if
end event

event rowfocuschanged;//Override

if parent.ib_retrieving = false then
	SetRedraw (true)
end if

if (ib_flowactive) and not (ib_retrieving) then
	il_row_flow = currentrow
	inv_timer.Start (0.35)	
end if

of_getrow(true)
end event

event ue_mousemove;call super::ue_mousemove;// =====
// Ref.: 18741556467 - jdm - 22/05/2007
String  ls_bandAtPointer
String  ls_objectAtPointer
String  ls_objectName
BOOLEAN lb_hayDrag

ls_bandAtPointer = this.GetBandAtPointer()
ls_objectAtPointer = this.GetObjectAtPointer()
ls_objectName = Upper(Mid(ls_objectAtPointer, 1, Pos(ls_objectAtPointer, "~t") - 1))

if ( (row > 0) and (ls_objectName = "BITMAP_CORTESIA") ) then
	if ( ib_dragFlag ) then
		lb_hayDrag = (abs(il_last_dragX - this.PointerX()) > 10)
		lb_hayDrag = (abs(il_last_dragY - this.PointerY()) > 10)
		if ( lb_hayDrag ) then
			ib_dragFlag = FALSE
			this.DragIcon = '..\recursos\ico\drag_tgagendatarea.ico'
			inv_manager.is_dragIcon = this.dragIcon
			inv_manager.il_dragBegin_source = parent.ii_dragId
			inv_manager.of_set_noTesTimer(FALSE)
			of_show_dragsource(this, il_last_row_clicked, TRUE)		
			Drag(Begin!)
		else
			il_last_dragX = this.PointerX()
			il_last_dragY = this.PointerY()
		end if
		return
	end if
	
	// Mostramos popup de vehículo de cortesia asociada a la cita
	if ( this.GetItemNumber(row, "tienevehcortesia") > 0 ) then
		if ( il_popup_row <> row ) then
			of_prepare_popup(row)
			inv_planCortesia_popup.ib_dragFollow = FALSE
			inv_plancortesia_popup.of_start(TRUE)
			il_popup_row = row
		end if
	else
		of_hide_popup()
		if isvalid(inv_plancortesia_popup) then
			inv_plancortesia_popup.il_row_popup = 0
		end if
		il_popup_row = 0
	end if
	
else
	of_init_plancortesia_popup()
	inv_planCortesia_popup.of_stop()
	inv_plancortesia_popup.il_row_popup = 0
	il_popup_row = 0
	
	of_mousemove(dw_show10, xpos, ypos, row)	
end if
// =====

end event

event dragenter;call super::dragenter;this.SetFocus()
if source = this then
	source.DragIcon = is_tarea_icono
else
	if inv_manager.of_isdragdropvalid(ii_dragid) then
		source.DragIcon = is_tarea_icono
		of_show_dragtarget (this,true)
	else
		source.DragIcon = is_nodrop_icono
	end if
end if

end event

event dragleave;call super::dragleave;source.DragIcon = inv_manager.is_dragicon
of_show_dragtarget (this,false)	
end event

event dragdrop;call super::dragdrop;if source = this then
else
	ib_ignoremousemove = true
	post of_dragdrop ()
end if 

inv_manager.of_dragcero()
end event

event clicked;call super::clicked;Long ll_HeaderHeight
Long ll_DetailHeight
Long ll_DragY
Long ll_FirstRow
Long ll_codigo
Long ll_find
long ll_descen

String ls_column
String	ls_AD

u_dw ldw_this

//Override
// =====
// Ref.: 18741556467 - jdm - 22/05/2007
if ( IsValid(inv_plancortesia_popup) ) then inv_plancortesia_popup.of_stop()	
// =====

il_last_row_clicked = row
il_row_flow         = row

if isvalid(dwo) then
	ls_column = lower(dwo.name)
else
	ls_column = lower(inv_manager.of_get_paramdata (st_tooltip.tag,'COLUMNNAME'))
end if

if row > 0 then
	choose case ls_column
		case 'r_aviso','compute_aviso','tooltip','nada_t','p_acabada'			
			of_edit_status (row)
		case else	
			Parent.Event ue_parentnotify ('CLICKONROW')
			inv_manager.of_param_Reset()
			inv_manager.il_dragbegin_row          = 0	
			inv_manager.il_dragbegin_cita			= GetitemNumber (row,'tarea')
			inv_manager.il_initial_aquien       = GetitemNumber (row,'clientefac')
			inv_manager.il_initial_porque       = GetitemNumber (row,'numinterno')
			inv_manager.is_initial_porquetipo   = 'TTOTCAB'
			inv_manager.is_initial_dequien      = gnv_app.inv_usuario.is_uid
			inv_manager.id_initial_iniciofecha  = gnv_App.inv_today.id_today
			inv_manager.is_initial_Tabla        = 'TTOTCAB'
			inv_manager.is_dragemp        = GetitemString (row,'emp')
			inv_manager.il_dragnuminterno = GetitemNumber (row,'numinterno')
			inv_manager.of_clicked (inv_manager.DD_OTCITA,inv_manager.is_dragemp,inv_manager.il_dragnuminterno)
			inv_timer.Start (0.25)
			ib_dragflag     = true
			il_last_dragx   = this.PointerX()
			il_last_dragy   = this.PointerY()
			ScrollToRow(row)
	end choose	
else
	
	// No puede provenir de un click en el objecto st_tooltip, por lo que "dwo" es una referencia correcta
	if is_columnsplitting > '' and is_currentcolumn  = '' then
		Object.DataWindow.Pointer = '..\recursos\cur\ve_sizec.CUR'
		il_xposclick = xpos
		ib_splitting = true
		of_splitting (dw_show10, is_columnsplitting, xpos)
		return
	end if

	if ls_column = 'datawindow' then return 
	// 0000635  SJP  20-5-2014
	if pos(ls_column, 'l_dragsource_') > 0 then return   // El rectángulo indicador de fila actual produce clicked con row=0, interpretándose erróneamente como una ordenación
	// ---
	
	inv_manager.of_clicked (0,'',0)
	ib_dragflag = false
	if GetRow() > 0 then
		ll_codigo = GetItemNumber (GetRow(),'numinterno')
	end if
	if ib_haygroupby then
		parent.of_set_orderby (ls_column)
	else
		if dwo.type = 'text' then
			ll_descen = 0
			if dwo.name = is_lastsorted then 
				if il_lastdescen = 0 then
					ll_descen = 1
				else
					ll_descen = 0
				end if
			end if
			is_lastsorted = ls_column
			il_lastdescen = ll_descen
			ldw_this = this
			if ls_column = 'bitmap_cortesia_t' then
				if ll_descen = 1 then
					ls_AD = 'A'
				else
					ls_AD = 'D'
				end if	
				SetSort ('tienevehcortesia ' + ls_AD + ', anoot D,numot D')
				of_set_arrowsort ('bitmap_cortesia_t', il_lastdescen)
			else	
				gnv_app.inv_menumanager.of_panel_setsort_unico(ldw_this,ls_column,ll_descen)
			end if
			Sort()
		end if
	end if
	If lower(mid(trim(ls_column), len(trim(ls_column)) - 2, 2)) = '_t' Then of_resize() 
end if

if row > 0 Then 	
	Post of_getrow( true )
end if

if ll_codigo > 0 then
	ll_find = Find ('numinterno = ' + string (ll_codigo),1,RowCount())
	ScrolltoRow (ll_find)
end if


end event

event lbuttonup;call super::lbuttonup;//Override

of_lbuttonup()

this.Drag (Cancel!)

if this.Object.DataWindow.Syntax.Modified = 'yes' then
	this.Modify("DataWindow.Syntax.Modified=No")
	Post of_Resize()
	This.Post SetFocus()
end if
end event

event key;call super::key;if key = KeyEnter! and GetRow () > 0 then
	of_edit(GetRow())
end if
end event

event losefocus;call super::losefocus;ib_splitting        = false
is_columnsplitting  = ''
il_last_row_tooltip = 0

of_hide_dwdatoscli()

this.modify ('lineavert.visible="0"')

end event

event scrollvertical;call super::scrollvertical;of_hide_dwdatoscli(true)	//JMR:22.7.2013 40801435244

of_getrow(false)
post of_getrow(true)
end event

event scrollhorizontal;call super::scrollhorizontal;parent.il_scrollpos = scrollpos
of_getrow(false)
post of_getrow(true)

end event

event resize;call super::resize;post of_getrow(true)
end event

type st_tooltip from statictext within u_calendar_ot
event lbuttondown pbm_lbuttondown
event ue_mousemove pbm_mousemove
string tag = "TRANSLATE=N;DENIED=N"
integer x = 1001
integer y = 1916
integer width = 343
integer height = 52
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 134217752
boolean border = true
boolean focusrectangle = false
end type

event lbuttondown;Long		ll_row
DWObject	ldwo

ll_row = long(inv_manager.of_get_paramdata (this.tag,'ROW'))
if ll_row > 0 then
//	ib_nost_tooltip = true
//	this.visible    = false
	xpos = long(inv_manager.of_get_paramdata (this.tag,'XPOS'))
	ypos = long(inv_manager.of_get_paramdata (this.tag,'YPOS'))
	idw_show.event clicked (xpos, ypos, ll_row, ldwo)
//	idw_show.event lbuttonup (0, xpos, ypos)
end if

end event

event ue_mousemove;// JMR: 10.8.2006 - No importan los valores pasados a of_mousemove en la siguiente invocación,
// basta con invocarla con el datawindow adecuado. La primera vez que es invocada tras el lbuttondown
// la función of_mousemove activa el drag, que es lo único que necesitamos. A partir de ahí el
// evento ue_mousemove del datawindow que estaba bajo este objeto st_tooltip se encarga de suministrar
// a la función los valores adecuados de xpo, ypos y row.

if ib_nost_tooltip then
	of_mousemove (idw_show,0,0,0)
end if
end event

event doubleclicked;if isvalid(iuo_panel) then
	if iuo_panel.of_isbussy() then return
end if

if isvalid(iuo_panel_cortesia) then
	if iuo_panel_cortesia.of_isbussy() then return
end if

this.visible = false

if il_last_row_tooltip_text > 0 then
	idw_show.il_last_row_clicked = il_last_row_tooltip_text
	of_edit(idw_show.il_last_row_clicked)
end if
end event

event clicked;Long		ll_row
Long		xpos
Long		ypos
DWObject	ldwo

ll_row = long(inv_manager.of_get_paramdata (this.tag,'ROW'))
if ll_row > 0 then
//	ib_nost_tooltip = true
//	this.visible    = false
	xpos = long(inv_manager.of_get_paramdata (this.tag,'XPOS'))
	ypos = long(inv_manager.of_get_paramdata (this.tag,'YPOS'))
	idw_show.event clicked (xpos, ypos, ll_row, ldwo)
	idw_show.event lbuttonup (0, xpos, ypos)
end if

end event

event losefocus;this.visible = false
end event

type uo_keyreader from u_hoverbutton_toolbar within u_calendar_ot
string tag = "TRANSLATE=N;DENIED=N"
integer x = 530
integer y = 4
integer width = 128
integer height = 108
integer taborder = 30
boolean bringtotop = true
end type

on uo_keyreader.destroy
call u_hoverbutton_toolbar::destroy
end on

event hoverbutton_clicked;call super::hoverbutton_clicked;if isvalid(iuo_panel) then
	if iuo_panel.of_isbussy() then return
end if

if isvalid(iuo_panel_cortesia) then
	if iuo_panel_cortesia.of_isbussy() then return
end if

of_open_keyrnotratados()
end event

event mousewithin;call super::mousewithin;of_hide_dwdatoscli (true)

of_lbuttonup()

end event

type uo_other from u_hoverbutton_toolbar within u_calendar_ot
event destroy ( )
string tag = "TRANSLATE=N;DENIED=N"
integer x = 695
integer y = 4
integer width = 128
integer height = 108
integer taborder = 20
boolean bringtotop = true
end type

on uo_other.destroy
call u_hoverbutton_toolbar::destroy
end on

event hoverbutton_clicked;call super::hoverbutton_clicked;if isvalid(iuo_panel) then
	if iuo_panel.of_isbussy() then return
end if

if isvalid(iuo_panel_cortesia) then
	if iuo_panel_cortesia.of_isbussy() then return
end if

of_filter_recepcionista ()

end event

event mousewithin;call super::mousewithin;of_hide_dwdatoscli (true)

of_lbuttonup()
end event

type uo_cargacita from u_hoverbutton_toolbar within u_calendar_ot
string tag = "TRANSLATE=N;DENIED=N"
integer x = 814
integer y = 4
integer width = 128
integer height = 108
integer taborder = 20
boolean bringtotop = true
end type

event dragleave;call super::dragleave;source.DragIcon = inv_manager.is_dragicon
end event

event hoverbutton_clicked;call super::hoverbutton_clicked;if isvalid(iuo_panel) then
	if iuo_panel.of_isbussy() then return
end if

if isvalid(iuo_panel_cortesia) then
	if iuo_panel_cortesia.of_isbussy() then return
end if

of_cargacita()
end event

on uo_cargacita.destroy
call u_hoverbutton_toolbar::destroy
end on

event mousewithin;call super::mousewithin;of_hide_dwdatoscli (true)

of_lbuttonup()
end event

type uo_mecanicos from u_hoverbutton_toolbar within u_calendar_ot
string tag = "TRANSLATE=N;DENIED=N"
integer x = 425
integer y = 4
integer width = 128
integer height = 108
integer taborder = 30
boolean bringtotop = true
end type

on uo_mecanicos.destroy
call u_hoverbutton_toolbar::destroy
end on

event hoverbutton_clicked;call super::hoverbutton_clicked;if isvalid(iuo_panel) then
	if iuo_panel.of_isbussy() then return
end if

if isvalid(iuo_panel_cortesia) then
	if iuo_panel_cortesia.of_isbussy() then return
end if

// IPS: 06.03.2007 - 17921155263
of_open_mecanicos()
end event

event mousewithin;call super::mousewithin;of_hide_dwdatoscli (true)

of_lbuttonup()
end event

type uo_pin from u_hoverbutton_pin within u_calendar_ot
event destroy ( )
string tag = "TRANSLATE=N;DENIED=N"
integer x = 1312
integer width = 123
integer height = 108
integer taborder = 10
boolean bringtotop = true
end type

on uo_pin.destroy
call u_hoverbutton_pin::destroy
end on

event ue_toggle;call super::ue_toggle;Parent.ib_pinned = this.ib_pinned
inv_manager.of_pinned(is_nombrepanel)
if this.ib_pinned then inv_manager.of_getfocus(this)



end event

event mousewithin;call super::mousewithin;of_hide_dwdatoscli (true)
of_calendar_popup_stop()
of_lbuttonup()
end event

event dragleave;call super::dragleave;source.DragIcon = inv_manager.is_dragicon
end event

type uo_search from u_hoverbutton_toolbar within u_calendar_ot
string tag = "TRANSLATE=N;DENIED=N"
integer x = 942
integer y = 4
integer width = 128
integer height = 108
integer taborder = 30
boolean bringtotop = true
end type

event dragleave;call super::dragleave;source.DragIcon = inv_manager.is_dragicon
end event

event hoverbutton_clicked;call super::hoverbutton_clicked;if isvalid(iuo_panel) then
	if iuo_panel.of_isbussy() then return
end if

if isvalid(iuo_panel_cortesia) then
	if iuo_panel_cortesia.of_isbussy() then return
end if

of_search()
end event

on uo_search.destroy
call u_hoverbutton_toolbar::destroy
end on

event mousewithin;call super::mousewithin;of_hide_dwdatoscli (true)

of_lbuttonup()
end event

type uo_view_backorder from u_hoverbutton_toolbar within u_calendar_ot
string tag = "TRANSLATE=N;DENIED=N"
integer x = 1193
integer y = 4
integer width = 128
integer height = 108
integer taborder = 60
boolean bringtotop = true
end type

on uo_view_backorder.destroy
call u_hoverbutton_toolbar::destroy
end on

event hoverbutton_clicked;call super::hoverbutton_clicked;if isvalid(iuo_panel) then
	if iuo_panel.of_isbussy() then return
end if

if isvalid(iuo_panel_cortesia) then
	if iuo_panel_cortesia.of_isbussy() then return
end if

of_view_backorder()
end event

event dragleave;call super::dragleave;source.DragIcon = inv_manager.is_dragicon
end event

event mousewithin;call super::mousewithin;of_hide_dwdatoscli (true)

of_lbuttonup()
end event

type uo_robef from u_hoverbutton_toolbar within u_calendar_ot
string tag = "TRANSLATE=N"
integer x = 169
integer y = 4
integer width = 128
integer height = 108
integer taborder = 50
boolean bringtotop = true
end type

on uo_robef.destroy
call u_hoverbutton_toolbar::destroy
end on

event hoverbutton_clicked;call super::hoverbutton_clicked;Post of_show_listarobef()
end event

event mousewithin;call super::mousewithin;of_hide_dwdatoscli (true)

end event

type st_title from u_month_head within u_calendar_ot
string tag = "TRANSLATE=N;DENIED=N"
integer x = 18
integer y = 20
integer width = 859
integer height = 80
boolean bringtotop = true
integer textsize = -10
integer weight = 700
string pointer = "..\recursos\cur\hand.cur"
long textcolor = 16777215
long backcolor = 8421504
string text = "Citas"
alignment alignment = left!
end type

event constructor;call super::constructor;this.BackColor = gf_get_color ('APP_FONDO')
end event

event doubleclicked;call super::doubleclicked;if isvalid(iuo_panel) then
	if iuo_panel.of_isbussy() then return
end if

if isvalid(iuo_panel_cortesia) then
	if iuo_panel_cortesia.of_isbussy() then return
end if

Parent.ib_pinned = not (parent.ib_pinned)
inv_manager.of_pinned()

SetPointer(Arrow!)

end event

event dragdrop;call super::dragdrop;inv_manager.of_dragdrop (0,0)
end event

event lbuttondown;call super::lbuttondown;of_window_vista()
end event

event ue_receive;call super::ue_receive;ii_vista  = ai_year
Parent.Event ue_parentnotify ('CLICKONROW')
Post of_changevista()
inv_manager.Post of_change_vista()

end event

event mousewithin;call super::mousewithin;Inv_ToolTip.RelayMsg(This)
of_lbuttonup()
end event

event clicked;//Override

if isvalid(iuo_panel) then
	if iuo_panel.of_isbussy() then return
end if

if isvalid(iuo_panel_cortesia) then
	if iuo_panel_cortesia.of_isbussy() then return
end if

return super::event clicked()

end event

type uo_nuevo from u_hoverbutton_toolbar within u_calendar_ot
event destroy ( )
string tag = "TRANSLATE=N;DENIED=N"
integer x = 1074
integer y = 4
integer width = 128
integer height = 108
integer taborder = 50
end type

on uo_nuevo.destroy
call u_hoverbutton_toolbar::destroy
end on

event hoverbutton_clicked;call super::hoverbutton_clicked;if isvalid(iuo_panel) then
	if iuo_panel.of_isbussy() then return
end if

if isvalid(iuo_panel_cortesia) then
	if iuo_panel_cortesia.of_isbussy() then return
end if

of_new()
end event

event mousewithin;call super::mousewithin;of_hide_dwdatoscli (true)
of_calendar_popup_stop()
of_lbuttonup()

end event

event dragleave;call super::dragleave;source.DragIcon = inv_manager.is_dragicon
end event

