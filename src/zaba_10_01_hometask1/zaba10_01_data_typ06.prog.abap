*&---------------------------------------------------------------------*
*& Report ZABA10_01_DATA_TYP06
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_data_typ06.

TYPES table_type TYPE TABLE OF sflight.
DATA data_sflight TYPE table_type.

***13***

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
DATA table_type2 TYPE gt01_sflight.

***14***
TYPES: BEGIN OF sbook,
         carrid   TYPE s_carr_id,
         connid   TYPE s_conn_id,
         fldate   TYPE s_date,
         bookid   TYPE s_book_id,
         customid TYPE s_customer,
       END OF sbook.
DATA table_type3 TYPE TABLE OF sbook WITH KEY customid.

***15***
DATA v_mes TYPE c LENGTH 10 VALUE 'Hello ABAP'.
DATA v_int TYPE f  VALUE 1234.
DATA v_int1 TYPE i  VALUE 42.
DATA v_int2 TYPE i  VALUE '12.72'.
DATA v_dat TYPE d  VALUE '20220501'.

***26***
DATA: BEGIN OF sbook_with_phone.
        INCLUDE STRUCTURE sbook.  " что это обозначает ?"
DATA phone TYPE scustom-telephone.
DATA END OF sbook_with_phone.

DATA t_scarr TYPE STANDARD TABLE OF scarr.
DATA t_spfli TYPE STANDARD TABLE OF spfli.

***31***
CONSTANTS c_name TYPE string VALUE 'Александра'.
