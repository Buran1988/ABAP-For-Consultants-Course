*&---------------------------------------------------------------------*
*& Report ZABA10_04_D01HW_04
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
**********************************************************************
* 6. Объявите тип структуры с 5 полями, каждое поле с теми же типами из упражнений с 1 по 5.
**********************************************************************

REPORT ZABA10_04_D01HW_04.

* описание локальных типов данных
TYPES tn_0401 TYPE C LENGTH 10.
TYPES tn_0402 TYPE I.
TYPES tn_0403 TYPE N LENGTH 7.
TYPES tn_0404 TYPE F.
TYPES tn_0405 TYPE D.
TYPES tn_0406 TYPE T.

TYPES: BEGIN OF gs_0401,
  ds_0401 TYPE tn_0401,
  ds_0402 TYPE tn_0402,
  ds_0403 TYPE tn_0403,
  ds_0404 TYPE tn_0404,
  ds_0405 TYPE tn_0405,
  ds_0406 TYPE tn_0406,
  END OF gs_0401.