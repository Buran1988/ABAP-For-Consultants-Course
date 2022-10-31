*&---------------------------------------------------------------------*
*& Report ZABA10_04_D02ADD_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
**********************************************************************
* Создан тип таблицы в словаре данных
* zaba10_04_my_struct_tab
**********************************************************************

REPORT ZABA10_04_D02ADD_02.

DATA gtd04_my_itab TYPE zaba10_04_my_struct_tab.  " объявляется таблица со ссылкой на созданный в словаре тип таблицы

gtd04_my_itab = VALUE #(
( CARRID = 'AA' CARRNAME = 'American Airlines' CONNID = 101 COUNTRYFR = 'US' CITYFROM = 'NEW YORK' FLDATE = '20221027' SEATSMAX = 330 SEATSOCC = 215 )
( CARRID = 'AA' CARRNAME = 'American Airlines' CONNID = 64 COUNTRYFR = 'US' CITYFROM = 'SAN FRANCISCO' FLDATE = '20221115' SEATSMAX = 330 SEATSOCC = 289 )
( CARRID = 'AZ' CARRNAME = 'Alitalia' CONNID = 55 COUNTRYFR = 'IT' CITYFROM = 'ROME' FLDATE = '20221223' SEATSMAX = 120 SEATSOCC = 120 )
( CARRID = 'AZ' CARRNAME = 'Alitalia' CONNID = 17 COUNTRYFR = 'IT' CITYFROM = 'ROME' FLDATE = '20230211' SEATSMAX = 120 SEATSOCC = 91 )
 ).

cl_demo_output=>display(
*  EXPORTING
    data    = gtd04_my_itab
    name    = 'gtd04_my_itab'
*    exclude =
*    include =
).
