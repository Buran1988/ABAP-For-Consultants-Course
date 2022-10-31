*&---------------------------------------------------------------------*
*& Report ZABA10_04_DATA_TYPES4
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_DATA_TYPES4.

*TYPES begin of gs04_flightinfo.
*
*  types end of gs04_flightinfo.

types: begin of gt04_flightinfo,
  carrid type s_carr_id,
  connid type s_conn_id,
  fldate type s_date,
  end of gt04_flightinfo.

data gs04_flightinfo type gt04_flightinfo.

gs04_flightinfo-carrid = 'AA'.
gs04_flightinfo-connid = '33'.
gs04_flightinfo-fldate = '20221115'.

cl_demo_output=>display(
*  EXPORTING
    data    = gs04_flightinfo
    name    = 'My structure'
*    exclude =
*    include =
).
