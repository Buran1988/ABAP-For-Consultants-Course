*&---------------------------------------------------------------------*
*& Report ZABA10_04_D02HW_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*

**********************************************************************
* 43. Напишите исполняемую программу, которая объединяет два слова, и запишите результат.
* 44. Напишите исполняемую программу, которая объединяет два слова и текущий месяц, разделяя каждую часть знаком «-», и записывайте результат.
* Попытки
* 45. Напишите исполняемую программу, которая считывает текущую системную дату и записывает ее на вашем языке в текстовом формате. Пример: 20140727 следует записывать как двадцать седьмое июля 2014 года.
* 46. ​​Напишите исполняемую программу, которая считывает текущее системное время и записывает время в 6 разных зонах (3 из них обязательно должны быть Гринвич, Дели и Бразилиа).
* **********************************************************************

REPORT ZABA10_04_D02HW_02.

* 43.
data gv04_01 type string.
data gv04_02 type string.

PARAMETERS p04_01 type STRING.
PARAMETERS p04_02 type STRING.

gv04_01 = p04_01 && p04_02.

CONCATENATE p04_01 p04_02 INTO gv04_02. "" from SOLUTION

* gv04_02 = p04_01 & p04_02.
* Literal Operator
* The literal operator & combines two literals or two string templates to form one literal or string template.


WRITE: /.
WRITE: /'Задание 43.'.
WRITE / |Результат: { p04_01 } { p04_02 }| COLOR COL_POSITIVE.
WRITE: /.
WRITE / |Результат 1: { gv04_01 }| COLOR COL_POSITIVE.
NEW-LINE. "" Вопрос. Не сработало.
WRITE: /.
WRITE / |Результат 2: { gv04_02 }| COLOR COL_POSITIVE.

* 44.

data gv04_03 type D.
data gv04_month type i.
gv04_03 = sy-datum.
gv04_month  = substring( val = gv04_03 off = 4 len = 2 ).

WRITE: /.
WRITE: /'Задание 44.'.
*WRITE / |{ gv04_03 }|.
*WRITE / |{ gv04_month }|.
WRITE / |Результат: { p04_01 } - { gv04_month } - { p04_02 }| COLOR COL_NORMAL.

* 44 from SOLUTION
CONSTANTS c_separator TYPE c VALUE '-'.
CONCATENATE p04_01 sy-datum+4(2) p04_02 INTO gv04_02 SEPARATED BY c_separator. "" from SOLUTION

WRITE: /.
WRITE: /'Задание 44. from SOLUTION'.
WRITE / |Результат: { gv04_02 }|.

*** Expressions HELP SAP - to check

* 45 NOT
data gv04_45 type D.
gv04_45 = sy-datlo.
WRITE: /.
WRITE: /'Задание 45.'.
WRITE / |{ gv04_45 }|.

* 46
data gv04_46_01 type T.
data gv04_46_02 type T.
gv04_46_01 = sy-timlo.
gv04_46_02 = sy-tzone.
WRITE: /.
WRITE: /'Задание 46.'.
WRITE / |{ gv04_46_01 } - { gv04_46_02 }|.

**
**HELP SAP
**
**DATA tz TYPE timezone.
**CALL FUNCTION 'GET_SYSTEM_TIMEZONE'
**  IMPORTING
**    timezone = tz.
**
**IF tz = sy-zonlo.
**  ASSERT sy-datum = sy-datlo.
**  ASSERT sy-uzeit = sy-timlo.
**ENDIF.

**Character-Like Access to Date Fields and Time Fields
**DATA: date TYPE d,
**      time TYPE t.
**
**DATA: year   TYPE i,
**      month  TYPE i,
**      day    TYPE i,
**      hour   TYPE i,
**      minute TYPE i,
**      second TYPE i.
**
**date = sy-datlo.
**time = sy-timlo.
**
**year   = substring( val = date off = 0 len = 4 ).
**month  = substring( val = date off = 4 len = 2 ).
**day    = substring( val = date off = 6 len = 2 ).
**hour   = substring( val = time off = 0 len = 2 ).
**minute = substring( val = time off = 2 len = 2 ).
**second = substring( val = time off = 4 len = 2 ).
