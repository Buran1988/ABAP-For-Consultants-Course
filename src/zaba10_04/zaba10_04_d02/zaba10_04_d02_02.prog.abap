*&---------------------------------------------------------------------*
*& Report ZABA10_04_D02_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_D02_02.

data gtd_04_spfli TYPE TABLE of spfli.      " внутренняя таблица - переменная типа таблица
data gtd_04_spfli_filt TYPE TABLE of spfli.   " внутренняя таблица - переменная типа таблица

PARAMETERS p_cityf TYPE spfli-cityfrom.

* select * from spfli into table gtd_04_spfli WHERE cityfrom = p_cityf. " вариант с/п WHERE

*  cl_demo_output=>display(
**    EXPORTING
*      data    = gtd_04_spfli
**      name    =
**      exclude =
**      include =
*  ).

select * from spfli into table gtd_04_spfli.  " правила хорошего тона - не использовать * а указывать конкретные поля

* особенно это актуально для HANA, т.к. используется поколоночное хранение данных
* и много ресурсов требуется для построчной обработки данных - в случае со '*'

LOOP AT gtd_04_spfli into DATA(ls_04_line)
  where cityfrom = p_cityf.
  APPEND ls_04_line to gtd_04_spfli_filt.
ENDLOOP.



  cl_demo_output=>display(
*    EXPORTING
      data    = gtd_04_spfli_filt
*      name    =
*      exclude =
*      include =
  ).
