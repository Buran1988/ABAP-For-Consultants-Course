*&---------------------------------------------------------------------*
*& Report ZABA10_04_D02ADD_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
**********************************************************************
* создан свой тип структуры ZABA10_04_MY_STRUCT
* создать внутреннюю таблицу с использованием этой структуры

REPORT zaba10_04_d02add_01.

data gtd04_my_itab TYPE TABLE OF zaba10_04_my_struct.           " объявление таблицы с/п созданной структуры

TYPES gs04_my_ddic_struct_1 TYPE zaba10_04_my_struct.           " объявление ТИПа структуры как созданная структура
DATA gtd04_my_itab_1 TYPE TABLE OF gs04_my_ddic_struct_1.       " объявление переменной таблицы как объявленный ТИП структуры

DATA gs04_my_ddic_struct_2 TYPE zaba10_04_my_struct.            " обявление переменной типа созданная структура
DATA gtd04_my_itab_2 like TABLE OF gs04_my_ddic_struct_2.       " обявление переменной таблицы с/п LIKE - т.к. обявленная структура это переменная

TYPES gs04_my_ddic_struct_3 LIKE REF TO gs04_my_ddic_struct_2.  " обявление ТИПа структуры с/п LIKE - т.к. обявленная структура это переменная
DATA gtd04_my_itab_3 TYPE TABLE OF gs04_my_ddic_struct_3.       " объявление переменной таблицы как объявленный ТИП структуры

**********************************************************************
* Способы записи
**********************************************************************

* 1) через объявление рабочей области (work area - wa)

data gs04_my_wa LIKE LINE OF gtd04_my_itab.   " объявление переменной - рабочая область как таблица

gs04_my_wa-CARRID = 'AA'.
gs04_my_wa-CARRNAME = 'American Airlines'.
gs04_my_wa-CONNID = 101.
gs04_my_wa-COUNTRYFR = 'US'.
gs04_my_wa-CITYFROM = 'NEW YORK'.
gs04_my_wa-FLDATE = '20221027'.
gs04_my_wa-SEATSMAX = 330.
gs04_my_wa-SEATSOCC = 284.

APPEND gs04_my_wa TO gtd04_my_itab.           " добавление строки в таблицу с заданными данными

gs04_my_wa-CARRID = 'DL'.
gs04_my_wa-CARRNAME = 'Delta Airlines'.
gs04_my_wa-CONNID = 77.
gs04_my_wa-COUNTRYFR = 'US'.
gs04_my_wa-CITYFROM = 'NEW YORK'.
gs04_my_wa-FLDATE = '20221229'.
gs04_my_wa-SEATSMAX = 330.
gs04_my_wa-SEATSOCC = 329.

APPEND gs04_my_wa TO gtd04_my_itab.           " добавление строки в таблицу с заданными данными

gs04_my_wa-CARRID = 'DL'.
gs04_my_wa-CARRNAME = 'Delta Airlines'.
gs04_my_wa-CONNID = 99.
gs04_my_wa-COUNTRYFR = 'US'.
gs04_my_wa-CITYFROM = 'NEW YORK'.
gs04_my_wa-FLDATE = '20221017'.
gs04_my_wa-SEATSMAX = 330.
gs04_my_wa-SEATSOCC = 214.

APPEND gs04_my_wa TO gtd04_my_itab.           " добавление строки в таблицу с заданными данными

cl_demo_output=>display(
*  EXPORTING
    data    = gtd04_my_itab
    name    = 'gtd04_my_itab'
*    exclude =
*    include =
).

* 2) Через оператор VALUE

gtd04_my_itab_1 = VALUE #(
( CARRID = 'AA' CARRNAME = 'American Airlines' CONNID = 101 COUNTRYFR = 'US' CITYFROM = 'NEW YORK' FLDATE = '20221027' SEATSMAX = 330 SEATSOCC = 215 )
( CARRID = 'AA' CARRNAME = 'American Airlines' CONNID = 64 COUNTRYFR = 'US' CITYFROM = 'SAN FRANCISCO' FLDATE = '20221115' SEATSMAX = 330 SEATSOCC = 289 )
( CARRID = 'AZ' CARRNAME = 'Alitalia' CONNID = 55 COUNTRYFR = 'IT' CITYFROM = 'ROME' FLDATE = '20221223' SEATSMAX = 120 SEATSOCC = 120 )
( CARRID = 'AZ' CARRNAME = 'Alitalia' CONNID = 17 COUNTRYFR = 'IT' CITYFROM = 'ROME' FLDATE = '20230211' SEATSMAX = 120 SEATSOCC = 91 )
 ).

cl_demo_output=>display(
*  EXPORTING
    data    = gtd04_my_itab_1
    name    = 'gtd04_my_itab_1'
*    exclude =
*    include =
).

**********************************************************************
* Способы чтения
**********************************************************************

* 1) Read Table

DATA gs04_my_wa_read LIKE LINE OF gtd04_my_itab.

READ TABLE gtd04_my_itab WITH KEY carrid = 'AA'  INTO gs04_my_wa_read.

cl_demo_output=>display(
*  EXPORTING
    data    = gs04_my_wa_read
    name    = 'gs04_my_wa_read'
*    exclude =
*    include =
).

DATA gs04_my_wa_read_1 TYPE zaba10_04_my_struct.

READ TABLE gtd04_my_itab_1 INDEX 3 INTO gs04_my_wa_read_1.

cl_demo_output=>display(
*  EXPORTING
    data    = gs04_my_wa_read_1
    name    = 'gs04_my_wa_read_1'
*    exclude =
*    include =
).



* 2) Table Expression

DATA(gs04_expr) = gtd04_my_itab[ carrid = 'DL' CONNID = 99 ]. " использовать < > нельзя

cl_demo_output=>display(
*  EXPORTING
    data    = gs04_expr
    name    = 'gs04_expr'
*    exclude =
*    include =
).

DATA(gs04_expr_1) = gtd04_my_itab_1[ 3 ].

cl_demo_output=>display(          "" можно также обычным образом использовать известный оператор WRITE
*  EXPORTING
    data    = gs04_expr_1
    name    = 'gs04_expr_1'
*    exclude =
*    include =
).


**********************************************************************
* Способы обработки данных таблицы
**********************************************************************
* 1) С помощью WA

data gv04_sum TYPE zaba10_04_my_struct-SEATSOCC.  " тип указали не примитивный, а соответствующее поле из структуры

LOOP AT gtd04_my_itab INTO data(ls04_my_work_area).

  gv04_sum = gv04_sum + ls04_my_work_area-SEATSOCC.


ENDLOOP.


**********************************************************************
* локальная структура ls04_my_work_area - описана сразу (а не заранее / выше как это делалось ранее).
* data(ls04_my_work_area)
* Все нужные параметры берутся из gtd04_my_itab
* когда таким образом объявляется что-то - параметры берутся как основной объект (в нашем случае как gtd04_my_itab.
**********************************************************************


*WRITE: / 'Суммарное количество мест: ' && gv_sum.  " 1 вариант Write

write / |Суммарное количество мест: { gv04_sum }| COLOR COL_TOTAL. " 2 вариант Write, более удобный синтаксис


ULINE.
