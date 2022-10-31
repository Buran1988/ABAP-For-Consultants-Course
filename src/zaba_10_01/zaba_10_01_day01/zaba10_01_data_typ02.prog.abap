*&---------------------------------------------------------------------*
*& Report ZABA10_01_DATA_TYP02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_01_DATA_TYP02.

DATA gs_flight type sflight.

PARAMETERS p_var1 type sflight-carrid.

gs_flight-carrid = p_var1.

write 'Код перевозчика' && gs_flight-carrid.
