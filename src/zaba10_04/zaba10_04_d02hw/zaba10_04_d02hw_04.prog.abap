*&---------------------------------------------------------------------*
*& Report ZABA10_04_D02HW_04
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
**********************************************************************
* 46. ​​Напишите исполняемую программу, которая считывает текущее системное время и записывает время в 6 разных зонах
* (3 из них обязательно должны быть Гринвич, Дели и Бразилиа).
* Гринвич GMT - Greenwich Mean Time
* Дели  IST - Indian Standard Time
* Бразилия FNT - Fernando de Noronha Time
* CET - Central European Time
* CEST - Central European Summer Time
**********************************************************************

REPORT ZABA10_04_D02HW_04.

write: / sy-zonlo.
write: / sy-datlo.
write: / sy-timlo.
write: / sy-datum.
write: / sy-uzeit.
write: /.

**DATA v_timezone1 TYPE tznzone VALUE 'GMTUK'. " Greenwich
**DATA v_timezone2 TYPE tznzone VALUE 'INDIA'. " Delhi
**DATA v_timezone3 TYPE tznzone VALUE 'BRAZIL'. " Brasilia
**DATA v_timezone4 TYPE tznzone VALUE 'CST'.
**DATA v_timezone5 TYPE tznzone VALUE 'ISRAEL'.
**DATA v_timezone6 TYPE tznzone VALUE 'RUS06'.

CONSTANTS gv04_tz01 TYPE STRING VALUE 'GMTUK'. " Greenwich
CONSTANTS gv04_tz02 TYPE STRING VALUE 'INDIA'. " Delhi
CONSTANTS gv04_tz03 TYPE STRING VALUE 'BRAZIL'. " Brasilia
CONSTANTS gv04_tz04 TYPE STRING VALUE 'CST'.
CONSTANTS gv04_tz05 TYPE STRING VALUE 'KGT'.
CONSTANTS gv04_tz06 TYPE STRING VALUE 'RUS06'.

DATA v_timezone1 TYPE tznzone VALUE gv04_tz01.
DATA v_timezone2 TYPE tznzone VALUE gv04_tz02.
DATA v_timezone3 TYPE tznzone VALUE gv04_tz03.
DATA v_timezone4 TYPE tznzone VALUE gv04_tz04.
DATA v_timezone5 TYPE tznzone VALUE gv04_tz05.
DATA v_timezone6 TYPE tznzone VALUE gv04_tz06.

DATA v_timestamp TYPE tzonref-tstamps.
DATA v_timestamp_string TYPE string.

START-OF-SELECTION.

CONCATENATE sy-datum sy-uzeit INTO v_timestamp_string.
v_timestamp = v_timestamp_string.

**WRITE v_timestamp TIME ZONE v_timezone1. NEW-LINE.
**WRITE v_timestamp TIME ZONE v_timezone2. NEW-LINE.
**WRITE v_timestamp TIME ZONE v_timezone3. NEW-LINE.
**WRITE v_timestamp TIME ZONE v_timezone4. NEW-LINE.
**WRITE v_timestamp TIME ZONE v_timezone5. NEW-LINE.
**WRITE v_timestamp TIME ZONE v_timezone6. NEW-LINE.


WRITE: v_timestamp TIME ZONE v_timezone1, ' ', gv04_tz01. NEW-LINE.
WRITE: v_timestamp TIME ZONE v_timezone2, ' ', gv04_tz02. NEW-LINE.
WRITE: v_timestamp TIME ZONE v_timezone3, ' ', gv04_tz03. NEW-LINE.
WRITE: v_timestamp TIME ZONE v_timezone4, ' ', gv04_tz04. NEW-LINE.
WRITE: v_timestamp TIME ZONE v_timezone5, ' ', gv04_tz05. NEW-LINE.
WRITE: v_timestamp TIME ZONE v_timezone6, ' ', gv04_tz06. NEW-LINE.
