*&---------------------------------------------------------------------*
*& Report ZABA10_04_DATA_TYPES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_DATA_TYPES.
DATA gv_var_0401 TYPE D.
DATA gv_var_0402 TYPE T.
DATA gv_var_0403 TYPE I.
DATA gv_var_0404 TYPE F.
DATA gv_var_0405 TYPE C LENGTH 6.
DATA gv_var_0406 TYPE STRING.



TYPES ty_my_ctype(6) type C.
data gv_var_0407 type ty_my_ctype.

data: gv_var_0408 TYPE s_carr_id.
parameters p04_c_id type s_carr_id.

* data: gs04_flight TYPE sflight.

* gs04_flight = my_car.

gv_var_0401 = sy-datum.
gv_var_0402 = sy-timlo.
gv_var_0403 = 500.
gv_var_0404 = '14.35'.
gv_var_0405 = 'Symbol'.
gv_var_0406 = 'Novel'.
gv_var_0407 = 'My Novel'.

WRITE gv_var_0401.
WRITE gv_var_0402.
WRITE gv_var_0403.
WRITE gv_var_0404.
WRITE gv_var_0405.
WRITE gv_var_0406.
WRITE / gv_var_0407.
