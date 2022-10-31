*&---------------------------------------------------------------------*
*& Report ZABA10_04_D01HW_05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
**********************************************************************
* 7. Объявите тип, используя глобальную структуру SFLIGHT.
* Рейс
* 8. Объявите структурный тип со следующими компонентами глобальной структуры SFLIGHT:CARRID, CONNID, FLDATE, PRICE, CURRENCY , PLANETYPE, SEATSMAX и SEATSOCC.
**********************************************************************
* 9. Объявите структурный тип со следующими компонентами глобальной структуры SBOOK: CARRID, CONNID, FLDATE, BOOKID, CUSTOMID.
* Бронирование рейсов
**********************************************************************
* 10. Объявите структуру, содержащую все поля, упомянутые в упражнениях 8 и 9. Проверьте ее с помощью отладчика ABAP.
**********************************************************************
*cl_demo_output=>display(
* exporting
* data =
* name =
* include =
*).

REPORT zaba10_04_d01hw_05.

* DATA gs04_flight type sflight. " по факту это определить новую структуру - типа slight
* Вопрос: Чем отличается тип от структурного типа?


TYPES t04_sflight TYPE sflight. " t04_sflight - объявлен тип, как глобальная структура SFLIGHT

TYPES: BEGIN OF gt04_sflight,   " gt04_sflight - объявлен структурный тип. Вопрос. Отличие от верхней команды тем, что выборочные компоненты?
         carrid    TYPE s_carr_id,        " Краткое название авиакомпании
         connid    TYPE s_conn_id,        " Код соединения для отдельного рейса
         fldate    TYPE s_date,           " Дата рейса
         price     TYPE s_price,           " Цена рейса
         currency  TYPE s_currcode,     " Внутренняя валюта авиакомпании
         planetype TYPE s_planetye,    " Тип самолета
         seatsmax  TYPE s_seatsmax,     " Максимальная вместимость эконом-класса
         seatsocc  TYPE s_seatsocc,     " Занятые места в эконом-классе
       END OF gt04_sflight.

DATA d04_sflight TYPE gt04_sflight.   " объявлена структура d04_sflight типа gt04_sflight

d04_sflight-carrid = 'AA'.
d04_sflight-connid = '33'.
d04_sflight-fldate = '20221115'.

cl_demo_output=>display(
*  EXPORTING
    data    = d04_sflight
    name    = 'Structure d04_sflight'
*    exclude =
*    include =
).

TYPES: BEGIN OF gt04_sbook,
         carrid   TYPE s_carr_id,        " Краткое название авиакомпании
         connid   TYPE s_conn_id,        " Код соединения для отдельного рейса
         fldate   TYPE s_date,           " Дата рейса
         bookid   TYPE s_book_id,        " Номер резервирования
         customid TYPE s_customer,     " Номер клиента авиакомпании
       END OF gt04_sbook.

DATA d04_sbook TYPE gt04_sbook.

d04_sbook-carrid = 'SR'.
d04_sbook-connid = '44'.
d04_sbook-fldate = '20221115'.

cl_demo_output=>display(
* exporting
 data = d04_sbook
 name = 'Structure d04_sbook'
* include =
).
TYPES: BEGIN OF gt04_sflight_sbook.
         INCLUDE TYPE gt04_sflight.
         INCLUDE TYPE gt04_sbook AS book RENAMING WITH SUFFIX _book.
TYPES END OF gt04_sflight_sbook.

DATA d04_sflight_sbook TYPE gt04_sflight_sbook.

d04_sflight_sbook-carrid = 'AA'.
d04_sflight_sbook-connid = '77'.
d04_sflight_sbook-fldate = '20221015'.
d04_sflight_sbook-carrid_book = 'BB'.
d04_sflight_sbook-connid_book = '99'.
d04_sflight_sbook-fldate_book = '20221031'.

cl_demo_output=>display(
* exporting
 data = d04_sflight_sbook
 name = 'Structure d04_sflight_sbook'
* include =
).
