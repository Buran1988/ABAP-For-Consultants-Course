*&---------------------------------------------------------------------*
*& Report ZABA10_02_DATA_TYPES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_DATA_TYPES.
DATA gv_var1 TYPE D.
DATA gv_var2 TYPE T.
DATA gv_var3 TYPE I.
DATA gv_var4 TYPE F.
DATA gv_var5 TYPE C LENGTH 40.
DATA gv_var6 TYPE STRING.
DATA gv_var7 TYPE s_carr_id.
PARAMETERS p_car_id TYPE s_carr_id.

gv_var1 = sy-datum.
gv_var2 = sy-timlo.
gv_var3 = 12345.
gv_var4 = '1254.541'.
gv_var5 = 'Текущее время'.
gv_var6 = 'Война и мир'.
gv_var7 = sy-datum.
WRITE gv_var1.
WRITE gv_var2.
WRITE gv_var3.
WRITE gv_var4.
WRITE gv_var5.
WRITE gv_var6.
WRITE gv_var7.
