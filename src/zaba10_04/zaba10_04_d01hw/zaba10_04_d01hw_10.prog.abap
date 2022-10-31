*&---------------------------------------------------------------------*
*& Report ZABA10_04_D01HW_10
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
**********************************************************************
* 27. Объявить внутреннюю таблицу с полями таблицы SBOOK CARRID, CONNID, FLDATE, BOOKID, CUSTOMID.
* 28. Объявите внутреннюю таблицу со всеми полями таблицы из таблицы SCARR.
* 29. Объявите внутреннюю таблицу со всеми полями таблицы SPFLI.
* 30. Объявите внутреннюю таблицу со всеми полями таблицы из SCARR и полем TELEPHONE из таблицы SCUSTOM.
**********************************************************************

REPORT ZABA10_04_D01HW_10.

* SOLUTION
* 27. Объявить внутреннюю таблицу с полями таблицы SBOOK CARRID, CONNID, FLDATE, BOOKID, CUSTOMID.

TYPES: BEGIN OF ty_sbook ,
carrid TYPE sbook-carrid,
connid TYPE sbook-connid,
fldate TYPE sbook-fldate,
bookid TYPE sbook-bookid,
customer_id TYPE sbook-customid,
END OF ty_sbook.
TYPES ty_itab_sbook TYPE TABLE OF ty_sbook WITH KEY carrid connid fldate bookid.
DATA itab_sbook TYPE ty_itab_sbook.

* 28. Объявите внутреннюю таблицу со всеми полями таблицы из таблицы SCARR.

DATA it_scarr TYPE STANDARD TABLE OF scarr.

* 29. Объявите внутреннюю таблицу со всеми полями таблицы SPFLI.

TYPES ty_spfli TYPE spfli.
DATA itab_spfli TYPE TABLE OF ty_spfli.

* 30. Объявите внутреннюю таблицу со всеми полями таблицы из SCARR и полем TELEPHONE из таблицы SCUSTOM.

TYPES: BEGIN OF ty_scarr_telephone.
INCLUDE TYPE scarr.
TYPES: phone TYPE scustom-telephone,
END OF ty_scarr_telephone,
ty_itab_scarr_telephone TYPE SORTED TABLE OF ty_scarr_telephone WITH UNIQUE KEY carrid.
DATA itab TYPE ty_itab_scarr_telephone.
