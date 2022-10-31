*&---------------------------------------------------------------------*
*& Report ZABA10_01_DATA_TYP05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_data_typ05.

*** Task 10

TYPES: BEGIN OF gt01_sflight,
         carrid    TYPE s_carr_id,
         connid    TYPE s_conn_id,
         fldate    TYPE s_date,
         price     TYPE s_price,
         currency  TYPE s_currcode,
         planetype TYPE s_planetye,
         seatsmax  TYPE s_seatsmax,
         seatsocc  TYPE s_seatsocc,
       END OF gt01_sflight.
DATA gs01_flight TYPE gt01_sflight.

TYPES: BEGIN OF sbook,
         carrid   TYPE s_carr_id,
         connid   TYPE s_conn_id,
         fldate   TYPE s_date,
         bookid   TYPE s_book_id,
         customid TYPE s_customer,
       END OF sbook.
DATA gs01_book TYPE sbook.

gs01_flight-carrid = 'AA'.
gs01_flight-connid = '33'.
gs01_flight-fldate = '20221201'.
gs01_flight-price = '50'.
gs01_flight-currency = 'USD'.
gs01_flight-planetype = '747-400'.
gs01_flight-seatsmax  = '385'.
gs01_flight-seatsocc  = '373'.
gs01_book-bookid    = '1171'.
gs01_book-customid = '2800'.

cl_demo_output=>display(
  EXPORTING
    data    = gs01_flight
*    name    =
*   exclude =
*    include =
).
