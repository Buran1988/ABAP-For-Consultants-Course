*&---------------------------------------------------------------------*
*& Report ZABA10_01_DATA_TYP03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_data_typ03.

DATA gv_var1 TYPE f.
DATA gv_var2 TYPE f.
DATA gv_rez TYPE f.
DATA gv_oper TYPE c.

PARAMETERS: p01_firs TYPE i
, p01_sec TYPE i
, p01_oper TYPE c.

gv_oper = p01_oper.

*IF
*  p01_oper = '+'.
*  gv_oper = p01_firs + p01_sec.
*  elseif p01_oper = '-'.
*  gv_oper = p01_firs - p01_sec.
*  elseIF  p01_oper = '*'.
*  gv_oper = p01_firs * p01_sec.
*  elseIF p01_oper = '/'.
*  gv_oper = p01_firs / p01_sec.
*  else. write 'Ошибка'.
*ENDIF.

case p01_oper.
  when '-'.
  gv_oper = p01_firs - p01_sec.
  when '+'.
  gv_oper = p01_firs + p01_sec.
  when '*'.
  gv_oper = p01_firs * p01_sec.
  when '/'.
    if p01_sec <> 0.
  gv_oper = p01_firs / p01_sec.
  else.
    WRITE 'На 0 делить нельзя!' color COL_NEGATIVE.
    exit.
    endif.
    when others.
  endcase.

WRITE gv_oper.
