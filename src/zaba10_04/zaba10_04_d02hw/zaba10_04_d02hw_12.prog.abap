*&---------------------------------------------------------------------*
*& Report ZABA10_04_D02HW_12
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
**********************************************************************
* 59. Напишите исполняемую программу, содержащую три внутренние таблицы
* (их тип должен содержать не менее трех компонентов разных типов данных).
* Каждая таблица будет иметь свой тип (стандартный, отсортированный и хешированный).
* Добавьте 3 одинаковых значения в каждую таблицу и просмотрите содержимое каждой таблицы в отладчике.

REPORT ZABA10_04_D02HW_12.

* определить тип структуры

TYPES: BEGIN OF st04_59,
st04_id TYPE c LENGTH 10,
st04_name TYPE string,
st04_value TYPE i,
END OF st04_59.

* определить таблицы

DATA it04_standard TYPE STANDARD TABLE OF st04_59.
DATA it04_sorted TYPE SORTED TABLE OF st04_59 WITH UNIQUE KEY st04_id.
DATA it04_hashed TYPE HASHED TABLE OF st04_59 WITH UNIQUE KEY st04_id.

* определить рабочую область

DATA wa_04 TYPE st04_59.

* задать значения

wa_04-st04_id = '3'.
wa_04-st04_name = 'John'.
wa_04-st04_value = 50.

* заполнить три таблицы

APPEND wa_04 TO it04_standard.
INSERT wa_04 INTO TABLE it04_sorted.
INSERT wa_04 INTO TABLE it04_hashed.

* задать значения

wa_04-st04_id = '2'.
wa_04-st04_name = 'Mary'.
wa_04-st04_value = 60.

* заполнить три таблицы

APPEND wa_04 TO it04_standard.
INSERT wa_04 INTO TABLE it04_sorted.
INSERT wa_04 INTO TABLE it04_hashed.

* задать значения

wa_04-st04_id = '1'.
wa_04-st04_name = 'Max'.
wa_04-st04_value = 30.

* заполнить три таблицы

APPEND wa_04 TO it04_standard.
INSERT wa_04 INTO TABLE it04_sorted.
INSERT wa_04 INTO TABLE it04_hashed.

* просмотр результата

cl_demo_output=>display(
* exporting
 data = it04_standard
 name = 'Table it04_standard'
* include =
).

cl_demo_output=>display(
* exporting
 data = it04_sorted
 name = 'Table it04_sorted'
* include =
).

cl_demo_output=>display(
* exporting
 data = it04_hashed
 name = 'it04_hashed_hashed'
* include =
).
