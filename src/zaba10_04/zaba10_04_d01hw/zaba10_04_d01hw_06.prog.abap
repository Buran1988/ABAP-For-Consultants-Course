*&---------------------------------------------------------------------*
*& Report ZABA10_04_D01HW_06
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
* Solution Task 7 - 10

REPORT zaba10_04_d01hw_06.

TYPES: BEGIN OF gt04_sflight,   " gt04_sflight - объявлен структурный тип. Вопрос. Отличие от верхней команды тем, что выборочные компоненты?
         carrid    TYPE sflight-carrid,        " Краткое название авиакомпании
         connid    TYPE sflight-connid,        " Код соединения для отдельного рейса
         fldate    TYPE sflight-fldate,           " Дата рейса
         price     TYPE sflight-price,           " Цена рейса
         currency  TYPE sflight-currency,     " Внутренняя валюта авиакомпании
         planetype TYPE sflight-planetype,    " Тип самолета
         seatsmax  TYPE sflight-seatsmax,     " Максимальная вместимость эконом-класса
         seatsocc  TYPE sflight-seatsocc,     " Занятые места в эконом-классе
       END OF gt04_sflight.

DATA d04_sflight TYPE gt04_sflight.

TYPES: BEGIN OF gt04_sbook.
TYPES carrid TYPE sbook-carrid.        " Краткое название авиакомпании
TYPES connid TYPE sbook-connid.        " Код соединения для отдельного рейса
TYPES fldate TYPE sbook-fldate.           " Дата рейса
TYPES bookid TYPE sbook-bookid.        " Номер резервирования
TYPES customid TYPE sbook-customid.     " Номер клиента авиакомпании
TYPES END OF gt04_sbook.

DATA d04_sbook TYPE gt04_sbook.

TYPES: BEGIN OF gt04_sflight_sbook.
         INCLUDE TYPE gt04_sflight.
         INCLUDE TYPE gt04_sbook AS book RENAMING WITH SUFFIX _book.
TYPES END OF gt04_sflight_sbook.

DATA d04_sflight_sbook TYPE gt04_sflight_sbook.
