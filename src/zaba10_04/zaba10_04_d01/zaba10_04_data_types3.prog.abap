*&---------------------------------------------------------------------*
*& Report ZABA10_04_DATA_TYPES3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_DATA_TYPES3.

data gv04_F type I.
data gv04_S type I.
data gv04_R type F.
data gv04_O type C.

parameters p04_F type I.
parameters p04_S type I.
parameters p04_O type C.

gv04_O = p04_O.

*if gv04_o = '+'.
*  gv04_r = p04_f + p04_s.
*elseif gv04_o = '-'.
*  gv04_r = p04_f - p04_s.
*elseif gv04_o = '*'.
*  gv04_r = p04_f * p04_s.
*elseif gv04_o = '/' and p04_s <> 0.
*  gv04_r = p04_f / p04_s.
*else.
*  write 'Ошибка в операции'.
*endif.

CASE gv04_o.
  WHEN '+'.
    gv04_r = p04_f + p04_s.
  WHEN '-'.
    gv04_r = p04_f - p04_s.
  When '*'.
    gv04_r = p04_f * p04_s.
  WHEN '/'.
    IF p04_s <> 0.
    gv04_r = p04_f / p04_s.
    ELSE.
    write 'Делить на ноль нельзя!' COLOR COL_NEGATIVE.
    exit.
    ENDIF.
  WHEN OTHERS.
ENDCASE.


write: gv04_r.
