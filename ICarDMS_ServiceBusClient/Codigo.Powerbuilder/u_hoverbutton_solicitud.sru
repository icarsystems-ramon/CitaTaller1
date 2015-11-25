$PBExportHeader$u_hoverbutton_solicitud.sru
forward
global type u_hoverbutton_solicitud from u_hoverbutton_toolbar
end type
type st_counter from statictext within u_hoverbutton_solicitud
end type
type ov_counter from oval within u_hoverbutton_solicitud
end type
end forward

global type u_hoverbutton_solicitud from u_hoverbutton_toolbar
st_counter st_counter
ov_counter ov_counter
end type
global u_hoverbutton_solicitud u_hoverbutton_solicitud

type variables
Long il_counter

end variables

forward prototypes
public subroutine of_onmessage ()
public subroutine of_init ()
end prototypes

public subroutine of_onmessage ();SetRedraw(false)
il_counter ++

st_counter.text = string (il_counter)

p_1.visible = false
ov_counter.visible = true
st_counter.visible = true
SetRedraw (true)

end subroutine

public subroutine of_init ();super::of_init()
//st_counter.BackColor  =  il_BackColor

ov_counter.X = p_1.X
ov_counter.Y = p_1.Y
ov_counter.Height = p_1.Height
ov_counter.Width	= p_1.Width


st_counter.X = p_1.X + 13
st_counter.Y = p_1.Y + 16
st_counter.Height = p_1.Height - 20 
st_counter.Width	= p_1.Width - 37




end subroutine

on u_hoverbutton_solicitud.create
int iCurrent
call super::create
this.st_counter=create st_counter
this.ov_counter=create ov_counter
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_counter
this.Control[iCurrent+2]=this.ov_counter
end on

on u_hoverbutton_solicitud.destroy
call super::destroy
destroy(this.st_counter)
destroy(this.ov_counter)
end on

event constructor;call super::constructor;st_counter.visible = false

end event

type p_1 from u_hoverbutton_toolbar`p_1 within u_hoverbutton_solicitud
end type

type st_counter from statictext within u_hoverbutton_solicitud
integer x = 9
integer y = 16
integer width = 87
integer height = 64
boolean bringtotop = true
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string pointer = "HyperLink!"
long textcolor = 16777215
long backcolor = 255
string text = "5"
alignment alignment = center!
boolean focusrectangle = false
end type

event clicked;parent.Event hoverbutton_clicked()
end event

type ov_counter from oval within u_hoverbutton_solicitud
boolean visible = false
long linecolor = 255
integer linethickness = 4
long fillcolor = 255
integer x = 82
integer y = 88
integer width = 165
integer height = 144
end type

