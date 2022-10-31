*&---------------------------------------------------------------------*
*& Report ZABA10_01_D02_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_d02_01.
DATA gtd_01_itab TYPE TABLE OF zsaba10_my_struct_1.

DATA gs_01_line TYPE zsaba10_my_struct_1.
gs_01_line-carrid = 88.
gs_01_line-connid = 02.
gs_01_line-fldate = '20221201'.
gs_01_line-planetype = 'type1'.

APPEND gs_01_line TO gtd_01_itab.

cl_demo_output=>display(
*  EXPORTING
    data    = gtd_01_itab
*    name    = 'NAME'
*    exclude =
*    include =
).

gtd_01_itab = VALUE #( ( carrid = 44 connid = 2 fldate = '20221212' planetype = 'type1' luggage_weight = '25.12')
( carrid = 55 connid = 8 fldate = '20221122' planetype = 'type5'  luggage_weight = '29.12')
( carrid = 56 connid = 9 fldate = '20231222' planetype = 'type7'  luggage_weight = '23.12')
( carrid = 57 connid = 6 fldate = '20221222' planetype = 'type9'  luggage_weight = '19.12')
).

DATA gs_01_wa LIKE LINE OF gtd_01_itab.

READ TABLE gtd_01_itab WITH KEY carrid = 88 INTO gs_01_wa.

cl_demo_output=>display(
*  EXPORTING
    data    = gs_01_wa
*    name    = 'NAME'
*    exclude =
*    include =
).

* DATA gs_01_wa2 LIKE LINE OF gtd_01_itab.
DATA(s_01_wa) = gtd_01_itab[ carrid = 44 ].

cl_demo_output=>display(
*  EXPORTING
    data    = gs_01_wa
*    name    = 'NAME'
*    exclude =
*    include =
).

DATA gv_summ TYPE zsaba10_my_struct_1-luggage_weight.
LOOP AT gtd_01_itab INTO DATA(gs_01_wa3).

  gv_summ = gv_summ + gs_01_wa3-luggage_weight.
  WRITE: / gs_01_wa3-luggage_weight.
ENDLOOP.
ULINE.

WRITE / |Суммарный вес багажа: { gv_summ }| COLOR COL_TOTAL.
