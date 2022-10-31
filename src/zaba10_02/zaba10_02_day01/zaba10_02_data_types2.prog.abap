*&---------------------------------------------------------------------*
*& Report ZABA10_02_DATA_TYPES2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_DATA_TYPES2.

DATA: gv_var1 TYPE D.
DATA: gs_flight TYPE sflight.

PARAMETERS my_car TYPE s_CARR_ID.
gs_flight-CARRID = my_car.
************************
"Объявили таблицу flight с полем CARRID равным значению my_car
"на селекционном экране"
**********************************************
gv_var1 = sy-datum.
WRITE 'код перевозчика:' && gs_flight-CARRID COLOR COL_POSITIVE.
"&& печать"
