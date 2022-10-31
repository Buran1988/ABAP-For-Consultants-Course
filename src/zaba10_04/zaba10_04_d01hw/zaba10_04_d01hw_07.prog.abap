*&---------------------------------------------------------------------*
*& Report ZABA10_04_D01HW_07
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
**********************************************************************
* 11. Объявить табличный тип целых чисел.
* 12. Объявить табличный тип со всеми компонентами глобальной структуры SFLIGHT.
* 13. Объявите тип таблицы, используя тип структуры, созданный в упражнении 8.
* 14. Объявите тип таблицы со следующими компонентами таблицы SBOOK: CARRID, CONNID, FLDATE, BOOKID, CUSTOMID, но используя CUSTOMID как часть ключа таблицы.

**********************************************************************
REPORT ZABA10_04_D01HW_07.

*SOLUTION
* 11. Объявить табличный тип целых чисел.

TYPES tt04_t11 TYPE TABLE OF i.
DATA odd_numbers TYPE tt04_t11.
DATA even_numbers TYPE tt04_t11.

START-OF-SELECTION.
APPEND: 1 TO odd_numbers,
3 TO odd_numbers,
5 TO odd_numbers,
7 TO odd_numbers,
9 TO odd_numbers.
APPEND: 2 TO even_numbers,
4 TO even_numbers,
6 TO even_numbers,
8 TO even_numbers,
10 TO even_numbers.

cl_demo_output=>display(
* exporting
 data = odd_numbers
 name = 'Structure odd_numbers'
* include =
).

cl_demo_output=>display(
* exporting
 data = even_numbers
 name = 'Structure even_numbers'
* include =
).

* SOLUTION
* 12. Объявить табличный тип со всеми компонентами глобальной структуры SFLIGHT.

TYPES tt04_t12 TYPE TABLE OF sflight.
DATA td04_t012_work_area TYPE LINE OF tt04_t12.
DATA td04_t12 TYPE tt04_t12.

START-OF-SELECTION.
td04_t012_work_area-CARRID = 'AA'.
td04_t012_work_area-CONNID = '0017'.
td04_t012_work_area-FLDATE = 20131225. "Christmas
td04_t012_work_area-PRICE = '500.12'.
APPEND td04_t012_work_area TO td04_t12.
td04_t012_work_area-CARRID = 'AA'.
td04_t012_work_area-CONNID = '064'.
td04_t012_work_area-FLDATE = 20131225.
td04_t012_work_area-PRICE = '500.12'.
APPEND td04_t012_work_area TO td04_t12.


cl_demo_output=>display(
* exporting
 data = td04_t12
 name = 'Structure td04_t12'
* include =
).

* SOLUTION
* 13. Объявите тип таблицы, используя тип структуры, созданный в упражнении 8.

TYPES: BEGIN OF some_components_sflight_2,
carrid TYPE sflight-carrid,
connid TYPE sflight-connid,
fldate TYPE sflight-fldate,
price TYPE sflight-price,
currency TYPE sflight-currency,
planetype TYPE sflight-planetype,
seatsmax TYPE sflight-seatsmax,
seatsocc TYPE sflight-seatsocc,
END OF some_components_sflight_2.

TYPES table_type_short_sflight TYPE TABLE OF some_components_sflight_2 WITH KEY
carrid connid fldate.

DATA td04_t13 TYPE table_type_short_sflight.

* как заполнять таблицу? только через рабочую область?

cl_demo_output=>display(
* exporting
 data = td04_t13
 name = 'Structure td04_t13'
* include =
).


* SOLUTION
* 14. Объявите тип таблицы со следующими компонентами таблицы SBOOK: CARRID, CONNID, FLDATE, BOOKID, CUSTOMID,
* но используя CUSTOMID как часть ключа таблицы.

TYPES: BEGIN OF flight_booking,
carrid TYPE sbook-carrid ,
connid TYPE sbook-connid ,
fldate TYPE sbook-fldate ,
bookid TYPE sbook-bookid ,
customid TYPE sbook-customid ,
END OF flight_booking .

TYPES table_type_booking TYPE TABLE OF flight_booking WITH KEY carrid connid fldate customid.

DATA td04_t14 TYPE table_type_booking.

* как заполнять таблицу? только через рабочую область?

cl_demo_output=>display(
* exporting
 data = td04_t14
 name = 'Structure td04_t14'
* include =
).
