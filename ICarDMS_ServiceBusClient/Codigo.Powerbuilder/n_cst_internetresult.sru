$PBExportHeader$n_cst_internetresult.sru
forward
global type n_cst_internetresult from internetresult
end type
end forward

global type n_cst_internetresult from internetresult
end type
global n_cst_internetresult n_cst_internetresult

type variables
string is_Data

end variables

forward prototypes
public function integer internetdata (blob data)
end prototypes

public function integer internetdata (blob data);is_data = String (data,EncodingUTF8!)
return 0

end function

on n_cst_internetresult.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_internetresult.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

