*&---------------------------------------------------------------------*
*& Report ZABA10_02_DATA_TYPES1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_02_data_types1.
data gtd_04_itab type table of zsaba10_my_struct_1.

* 1 вариант - рабочая область

* data gs_04_line like LINE OF gtd_04_itab.
data gs_04_line type zsaba10_my_struct_1.

gs_04_line-carrid = 99.
gs_04_line-connid = 3.
gs_04_line-fldate = '20221010'.
gs_04_line-planetype = 'type1'.

append gs_04_line to gtd_04_itab.

cl_demo_output=>display(
* exporting
 data = gtd_04_itab
 name = 'Table gtd_04_itab'
* include =
).


*2 value

gtd_04_itab = VALUE #(
  ( carrid = 77 connid = 8 fldate = '20221018' planetype = 'type3' luggage_weight = '15.33')
  ( carrid = 76 connid = 8 fldate = '20221018' planetype = 'type3' luggage_weight = '16.18')
  ( carrid = 75 connid = 8 fldate = '20221018' planetype = 'type3' luggage_weight = '15.33')
  ( carrid = 74 connid = 8 fldate = '20221018' planetype = 'type3' luggage_weight = '5.99')
).

data gs_04_wa LIKE LINE OF gtd_04_itab.

read TABLE gtd_04_itab with KEY carrid = 75 into gs_04_wa.

cl_demo_output=>display(
* exporting
 data = gs_04_wa
 name = 'Table gs_04_wa'
* include =
).

* table expression

data(gs_04_expr1) = gtd_04_itab[ carrid = 76 ].

cl_demo_output=>display(
* exporting
 data = gs_04_expr1
 name = 'Table gs_04_expr1'
* include =
).

* sum
data gv_04_sum type zsaba10_my_struct_1-luggage_weight.

LOOP AT gtd_04_itab into data(ls_04_wa).
  gv_04_sum = gv_04_sum + ls_04_wa-luggage_weight.
ENDLOOP.



WRITE / |Суммарный вес багажа : { gv_04_sum }| COLOR COL_TOTAL.

uline.
