*&---------------------------------------------------------------------*
*& Report ZABA10_02_DATA_TYPES5
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_DATA_TYPES5.
DATA: gv_var1 TYPE c LENGTH 10,"Объявите ТИП как символ с 10 позициями"
      gv_var2 TYPE i, "целое число"
      gv_var3 TYPE N LENGTH 7," Объявите тип как число с 7 позициями."
      gv_var4 TYPE d,"Объявите тип даты."
      gv_var5 TYPE t." Объявите тип времени"

gv_var2 = '13'.
gv_var3 = '1234567'.
gv_var4 = sy-datum.
gv_var5 = sy-TIMLO.
WRITE:'Всем привет' COLOR COL_POSITIVE,
/'Всем привет через сцеп' COLOR COL_NEGATIVE,
/'Всем привет через сцеп 2' COLOR COL_HEADING,
/ gv_var2,
/ gv_var3,
/ gv_var4,
/ gv_var5.
"31 Объявите константу, содержащую ваше имя."
CONSTANTS c_name TYPE string VALUE 'Торжков Алексей'.
