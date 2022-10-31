*&---------------------------------------------------------------------*
*& Report ZABA10_04_D01HW_13
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
**********************************************************************
* 36. Объявите все типы и константы из пулов типов ABAP и ICON.
* 37. Объявите константу, тип которой совпадает с типом другой константы.
* 38. Объявите тип, который используется в другом типе, переменной, рабочей области, внутренней таблице и константе.
* 39. Объявите переменную, которая используется в другой переменной, типе, рабочей области, внутренней таблице и константе.
**********************************************************************

REPORT ZABA10_04_D01HW_13.

* 36. Объявите все типы и константы из пулов типов ABAP и ICON.
* Is it possible to declare an internal table of constants?
* Answer:
* No. No initial value can be specified for internal tables and references

TYPES ty_integer TYPE i.
TYPES ty_integers TYPE TABLE OF ty_integer.
* CONSTANTS itab_integers TYPE ty_integers VALUE 1. " Syntax error


* 37. Объявите константу, тип которой совпадает с типом другой константы.
TYPE-POOLS: icon, abap.
CONSTANTS c_favorite_icon LIKE icon_information VALUE '@0S@'.
DATA is_true TYPE abap_bool.

* 38. Объявите тип, который используется в другом типе, переменной, рабочей области, внутренней таблице и константе.
CONSTANTS c_a TYPE c VALUE 'A'.
CONSTANTS c_z LIKE c_a VALUE 'Z'.

* 39. Объявите переменную, которая используется в другой переменной, типе, рабочей области, внутренней таблице и константе.

TYPES ty_reused_date TYPE d.
TYPES ty_creation_date TYPE ty_reused_date.
DATA v_creation_date TYPE ty_reused_date.
DATA v_update_date TYPE ty_reused_date.
DATA: BEGIN OF wa_document,
name TYPE string,
creation_date TYPE ty_reused_date,
update_date TYPE ty_reused_date,
END OF wa_document.
DATA: itab_documents LIKE TABLE OF wa_document.
CONSTANTS c_update_date TYPE ty_reused_date VALUE '99991231'.
