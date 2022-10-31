*&---------------------------------------------------------------------*
*& Report ZABA10_01_DATA_TYP04
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_data_typ04.

DATA: gv_var1 TYPE c LENGTH 10,
      gv_var2 TYPE i,
      gv_var3 TYPE f,
      gv_var4 TYPE d,
      gv_var5 TYPE t.

gv_var3 = '1254.5418979'.

TYPES: BEGIN OF gt01_test,
         gv_var1 TYPE c LENGTH 10,
         gv_var2 TYPE i,
         gv_var3 TYPE f,
         gv_var4 TYPE d,
         gv_var5 TYPE t,
       END OF gt01_test.

TYPES gt_sflight TYPE sflight.

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

*Task 9

TYPES: BEGIN OF sbook,
         carrid   TYPE s_carr_id,
         connid   TYPE s_conn_id,
         fldate   TYPE s_date,
         bookid   TYPE s_book_id,
         customid TYPE s_customer,
       END OF sbook.
