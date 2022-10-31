*&---------------------------------------------------------------------*
*& Report ZABA10_04_D01HW_09
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
**********************************************************************
* 24. Объявить однотипную структуру SBOOK.
* 25. Объявите структуру с полями таблицы SFLIGHT carrid, CONNID, FLDATE, PRICE, CURRENCY, PLANETYPE и SEATSMAX SEATSOCC.
* 26. Объявите структуру со всеми полями таблицы SBOOK и полем TELEPHONE из таблицы SCUSTOM.
**********************************************************************

REPORT ZABA10_04_D01HW_09.

TYPES st04_t024 TYPE sbook.

DATA d04_t024 TYPE st04_t024.

d04_t024-carrid = 'AA'.
d04_t024-connid = '77'.
d04_t024-fldate = '20221015'.

cl_demo_output=>display(
* exporting
 data = d04_t024
 name = 'Structure d04_t024'
* include =
).

DATA: BEGIN OF d04_t025,
  carrid TYPE SFLIGHT-carrid,
  CONNID TYPE SFLIGHT-CONNID,
  FLDATE TYPE SFLIGHT-FLDATE,
  PRICE TYPE SFLIGHT-PRICE,
  CURRENCY TYPE SFLIGHT-CURRENCY,
  PLANETYPE TYPE SFLIGHT-PLANETYPE,
  SEATSMAX TYPE SFLIGHT-SEATSMAX,
  SEATSOCC TYPE SFLIGHT-SEATSOCC,
  end of d04_t025.

d04_t025-carrid = 'BB'.
d04_t025-connid = '88'.
d04_t025-fldate = '20221025'.

cl_demo_output=>display(
* exporting
 data = d04_t025
 name = 'Structure d04_t025'
* include =
).

TYPES: BEGIN OF st04_t026.
         INCLUDE TYPE st04_t024.
         TYPES TELEPHONE TYPE SCUSTOM-TELEPHONE.
TYPES END OF st04_t026.

DATA d04_t026 TYPE st04_t026.

d04_t026-carrid = 'SR'.
d04_t026-connid = '99'.
d04_t026-fldate = '20221031'.

cl_demo_output=>display(
* exporting
 data = d04_t026
 name = 'Structure d04_t026'
* include =
).

* SOLUTION
* в чем основная разница между TYPES / DATA
DATA: BEGIN OF sbook_with_phone.
INCLUDE STRUCTURE sbook.
DATA phone TYPE scustom-telephone.
DATA END OF sbook_with_phone.

sbook_with_phone-carrid = 'SR'.
sbook_with_phone-connid = '99'.
sbook_with_phone-fldate = '20220331'.

cl_demo_output=>display(
* exporting
 data = sbook_with_phone
 name = 'Structure sbook_with_phone'
* include =
).
