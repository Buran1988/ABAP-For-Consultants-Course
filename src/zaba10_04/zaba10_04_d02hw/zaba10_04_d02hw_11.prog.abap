*&---------------------------------------------------------------------*
*& Report ZABA10_04_D02HW_11
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
**********************************************************************
* 59. Напишите исполняемую программу, содержащую три внутренние таблицы
* (их тип должен содержать не менее трех компонентов разных типов данных).
* Каждая таблица будет иметь свой тип (стандартный, отсортированный и хешированный).
* Добавьте 3 одинаковых значения в каждую таблицу и просмотрите содержимое каждой таблицы в отладчике.

* не завершенная программа. не получилось сделать сортированную таблицу.

REPORT ZABA10_04_D02HW_11.

* объявление структуры

types: BEGIN OF zs04_59_01,
  p5901_1 type c length 10, " символьное
  p5901_2 TYPE i,           " целое
  p5901_3 type d,           " дата
END OF zs04_59_01.

types: BEGIN OF zs04_59_02,
  p5902_1 type S_CARR_ID,   " C 3 Краткое название авиакомпании
  p5902_2 type S_PLANETYE,  " C 10 Тип самолета
  p5902_3 TYPE C LENGTH 10, " C 10 Комментарии

END OF zs04_59_02.

types: BEGIN OF zs04_59_03,
  p5903_1 type S_CARR_ID,   " C 3 Краткое название авиакомпании
  p5903_2 TYPE S_CONN_ID,   " N 4 Код соединения для отдельного рейса
  p5903_3 type S_DATE,      " D 8 Дата рейса
  p5903_4 type S_BOOK_ID,   " N 8 Номер резервирования
  p5903_5 type S_CUSTOMER,  " N 8 Номер клиента авиакомпании
END OF zs04_59_03.

* объявление типа таблицы

TYPES tt04_59_01 type TABLE OF zs04_59_01.
TYPES tt04_59_02 type SORTED TABLE OF zs04_59_02 WITH NON-UNIQUE KEY p5902_1.
TYPES tt04_59_03 type TABLE OF zs04_59_03.

* объявление таблицы

DATA gtd04_59_01 TYPE tt04_59_01.
DATA gtd04_59_02 TYPE tt04_59_02.
DATA gtd04_59_03 TYPE tt04_59_03.

* объявление рабочей области

DATA lwa04_59_01 TYPE tt04_59_01.
DATA lwa04_59_02 TYPE tt04_59_02.
DATA lwa04_59_03 TYPE tt04_59_03.


* не получилось настроить сортированную таблицу




**********************************************************************


**gtd_04_itab = VALUE #(
**  ( carrid = 77 connid = 8 fldate = '20221018' planetype = 'type3' luggage_weight = '15.33')
**  ( carrid = 76 connid = 8 fldate = '20221018' planetype = 'type3' luggage_weight = '16.18')
**  ( carrid = 75 connid = 8 fldate = '20221018' planetype = 'type3' luggage_weight = '15.33')
**  ( carrid = 74 connid = 8 fldate = '20221018' planetype = 'type3' luggage_weight = '5.99')
**).
**
**data gs_04_wa LIKE LINE OF gtd_04_itab.
**
**read TABLE gtd_04_itab with KEY carrid = 75 into gs_04_wa.
**
**cl_demo_output=>display(
*** exporting
** data = gs_04_wa
** name = 'Table gs_04_wa'
*** include =
**).
