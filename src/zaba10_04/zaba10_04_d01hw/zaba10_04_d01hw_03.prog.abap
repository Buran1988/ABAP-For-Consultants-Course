*&---------------------------------------------------------------------*
*& Report ZABA10_04_D01HW_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
**********************************************************************
* локальные типы данных, зачем???
**********************************************************************

REPORT ZABA10_04_D01HW_03.


*DATA gv_var_0401 TYPE C LENGTH 10.
*DATA gv_var_0402 TYPE I.
*DATA gv_var_0403 TYPE N LENGTH 7.
*DATA gv_var_0404 TYPE F.
*DATA gv_var_0405 TYPE D.
*DATA gv_var_0406 TYPE T.

* описание локальных типов данных
TYPES tn_0401 TYPE C LENGTH 10.
TYPES tn_0402 TYPE I.
TYPES tn_0403 TYPE N LENGTH 7.
TYPES tn_0404 TYPE F.
TYPES tn_0405 TYPE D.
TYPES tn_0406 TYPE T.

* описание переменных в соответствии с локальными типами данных
DATA gv_var_0401 TYPE tn_0401.
DATA gv_var_0402 TYPE tn_0402.
DATA gv_var_0403 TYPE tn_0403.
DATA gv_var_0404 TYPE tn_0404.
DATA gv_var_0405 TYPE tn_0405.
DATA gv_var_0406 TYPE tn_0406.

**********************************************************************
gv_var_0401 = 'Character!'.   " Character!
gv_var_0402 = 5510011.        "  5.510.011 - точка просто деление разрядности
gv_var_0403 = 987654321.      " 7654321 - 7 символов с конца
gv_var_0404 = '123.456789'.   "   1,2345678900000000E+02
gv_var_0405 = sy-datum.       " 25102022
gv_var_0406 = sy-timlo.       " 113014

**********************************************************************

WRITE:  / gv_var_0401,
        / gv_var_0402,
        / gv_var_0403,
        / gv_var_0404,
        / gv_var_0405,
        / gv_var_0406.
