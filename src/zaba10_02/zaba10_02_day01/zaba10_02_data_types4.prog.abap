*&---------------------------------------------------------------------*
*& Report ZABA10_02_DATA_TYPES4
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_DATA_TYPES4.

types: begin of gt04_flightinfo,
  carrid type s_carr_id,
  connid type s_conn_id,
  fldate type s_date,
  end of gt04_flightinfo.

data gs04_flightinfo type gt04_flightinfo.

gs04_flightinfo-carrid = 'UA'.
gs04_flightinfo-connid = '3517'.
gs04_flightinfo-fldate = '20230515'.

cl_demo_output=>display(
*  Вывод
    data    = gs04_flightinfo
    name    = 'Моя структура'
).
