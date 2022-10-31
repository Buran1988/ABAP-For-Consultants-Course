*&---------------------------------------------------------------------*
*& Report ZABA10_04_D02_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*

**********************************************************************
* Пример объединения таблиц Join
**********************************************************************

REPORT zaba10_04_d02_03.

SELECT * FROM spfli INTO TABLE @DATA(gtd04_my_itab). "" @ - выделяет то, что не относится к SQL Select

LOOP AT gtd04_my_itab INTO DATA(ls04_my_line).  " вывод с использованием Work Area

  WRITE / ls04_my_line-carrid.
  WRITE  ls04_my_line-distance.

ENDLOOP.

WRITE /.

SELECT * FROM spfli INNER JOIN scarr ON spfli~carrid = scarr~carrid
   INTO TABLE @DATA(gtd04_my_itab_2).

LOOP AT gtd04_my_itab_2 INTO DATA(ls04_my_line_2).

  WRITE / ls04_my_line_2-spfli-carrid.      " важно указывать префикс таблицы, т.к. уже участвуют две таблицы
  WRITE  ls04_my_line_2-scarr-carrname.
  WRITE  ls04_my_line_2-spfli-distance.
ENDLOOP.
