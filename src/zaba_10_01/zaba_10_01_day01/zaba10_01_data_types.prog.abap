*&---------------------------------------------------------------------*
*& Report ZABA10_01_DATA_TYPES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_01_DATA_TYPES.

DATA gv_var1 TYPE D.
data gv_var2 type T.
data gv_var3 type I.
data gv_var4 type F.
data gv_var5 type C LENGTH 40.
data gv_var6 type STRING.
types ty_my_c_type(6) type c.
data gv_var7 type ty_my_c_type.
data gv_var8 type s_carr_id.
parameters p_car_id type s_carr_id.

gv_var1 = sy-datum.
gv_var2 = sy-timlo.
gv_var3 = 1234.
gv_var4 = '1254.541'.
gv_var5 = 'Текущая дата/время'.
gv_var6 = 'Война и мир'.
gv_var7 = 'МирМир'.

WRITE gv_var5.
WRITE gv_var1.
write gv_var2.
write gv_var3.
write gv_var4.
WRITE: gv_var6,
       / gv_var7,
       / gv_var8,
        p_car_id.
