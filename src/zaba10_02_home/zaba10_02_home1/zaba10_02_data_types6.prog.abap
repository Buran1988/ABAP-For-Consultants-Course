*&---------------------------------------------------------------------*
*& Report ZABA10_02_DATA_TYPES6
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_DATA_TYPES6.
"10 задание.Объявите структуру, содержащую все поля, упомянутые в упражнениях 8 и 9. Проверьте ее с помощью отладчика ABAP."

TYPES: BEGIN OF gt001_sflight,
         carrid    TYPE s_carr_id,
         connid    TYPE s_conn_id,
         fldate    TYPE s_date,
         price     TYPE s_price,
         currency  TYPE s_currcode,
         planetype TYPE s_planetye,
       END OF gt001_sflight.
DATA gs01_flight TYPE gt001_sflight.

TYPES: BEGIN OF sbook,
         carrid   TYPE s_carr_id,
         connid   TYPE s_conn_id,
         fldate   TYPE s_date,
         bookid   TYPE s_book_id,
         customid TYPE s_customer,
       END OF sbook.
DATA gs01_book TYPE sbook.

gs01_flight-carrid = 'LH'.
gs01_flight-connid = '2407'.
gs01_flight-fldate = '20232005'.
gs01_flight-price = '242'.
gs01_flight-currency = 'EUR'.
gs01_flight-planetype = 'A320-200'.

cl_demo_output=>display(
  EXPORTING
    data    = GS01_FLIGHT
    name    = 'Моя структура'
).
