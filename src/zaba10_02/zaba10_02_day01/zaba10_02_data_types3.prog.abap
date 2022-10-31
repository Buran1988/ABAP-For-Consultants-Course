*&---------------------------------------------------------------------*
*& Report ZABA10_02_DATA_TYPES3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_DATA_TYPES3.
data gvar_07_F type I.
data gvar_07_S type I.
data gvar_07_R type F.
data gvar_07_O type C.

parameters p07_F type I.
parameters p07_S type I.
parameters p07_O type C.

gvar_07_O = p07_O.

*if gvar_07_o = '+'.
*  gvar_07_r = p07_f + p07_s.
*elseif gvar_07_o = '-'.
*  gvar_07_r = p07_f - p07_s.
*elseif gvar_07_o = '*'.
*  gvar_07_r = p04_f * p07_s.
*elseif gvar_07_o = '/' and p07_s <> 0.
*  gvar_07_r = p07_f / p07_s.
*else.
*  write 'Ошибка в операции'.
*endif.

CASE gvar_07_o.
  WHEN '+'.
    gvar_07_r = p07_f + p07_s.
  WHEN '-'.
    gvar_07_r = p07_f - p07_s.
  When '*'.
    gvar_07_r = p07_f * p07_s.
  WHEN '/'.
    IF p07_s <> 0.
    gvar_07_r = p07_f / p07_s.
    ELSE.
    write '!!!Делить на ноль нельзя!!!' COLOR COL_NEGATIVE.
    STOP.
    ENDIF.
  WHEN OTHERS.
ENDCASE.


write: gvar_07_r.
