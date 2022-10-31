*&---------------------------------------------------------------------*
*& Report ZABA10_04_D02HW_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
**********************************************************************
* from SOLUTION
* 45. Напишите исполняемую программу, которая считывает текущую системную дату и записывает ее на вашем языке в текстовом формате.
* Пример: 20140727 следует записывать как двадцать седьмое июля 2014 года.
**********************************************************************
REPORT ZABA10_04_D02HW_03.

DATA gv04_day TYPE string.
DATA gv04_month TYPE string.
DATA gv04_year TYPE string.
DATA gv04_text TYPE string.

gv04_year = sy-datum(4).

CASE sy-datum+4(2).
  WHEN '01'.
    gv04_month = 'января'.
  WHEN '02'.
    gv04_month = 'февраля'.
  WHEN '03'.
    gv04_month = 'марта'.
  WHEN '04'.
    gv04_month = 'апреля'.
  WHEN '05'.
    gv04_month = 'мая'.
  WHEN '06'.
    gv04_month = 'июня'.
  WHEN '07'.
    gv04_month = 'июля'.
  WHEN '08'.
    gv04_month = 'августа'.
  WHEN '09'.
    gv04_month = 'сентября'.
  WHEN '10'.
    gv04_month = 'октября'.
  WHEN '11'.
    gv04_month = 'ноября'.
  WHEN '12'.
    gv04_month = 'декабря'.
  WHEN OTHERS.
ENDCASE.

CASE sy-datum+4(2).
  WHEN '01'.
  gv04_day = 'первое'.
  WHEN '02'.
  gv04_day = 'второе'.
  WHEN '03'.
  gv04_day = 'третье'.
  WHEN '04'.
  gv04_day = 'четвертое'.
  WHEN '05'.
  gv04_day = 'пятое'.
  WHEN '06'.
  gv04_day = 'шестое'.
  WHEN '07'.
  gv04_day = 'седьмое'.
  WHEN '08'.
  gv04_day = 'восьмое'.
  WHEN '09'.
  gv04_day = 'девятое'.
  WHEN '10'.
  gv04_day = 'десятое'.
  WHEN '11'.
  gv04_day = 'одиннадцатое'.
  WHEN '12'.
  gv04_day = 'двенадцатое'.
  WHEN '13'.
  gv04_day = 'тринадцатое'.
  WHEN '14'.
  gv04_day = 'четырнадцатое'.
  WHEN '15'.
  gv04_day = 'пятнадцатое'.
  WHEN '16'.
  gv04_day = 'шестнадцатое'.
  WHEN '17'.
  gv04_day = 'семнадцатое'.
  WHEN '18'.
  gv04_day = 'восемьнадцатое'.
  WHEN '19'.
  gv04_day = 'девятнадцатое'.
  WHEN '20'.
  gv04_day = 'двадцатое'.
  WHEN '21'.
  gv04_day = 'двадцать первое'.
  WHEN '22'.
  gv04_day = 'двадцать второе'.
  WHEN '23'.
  gv04_day = 'двадцать третье'.
  WHEN '24'.
  gv04_day = 'двадцать четвертое'.
  WHEN '25'.
  gv04_day = 'двадцать пятое'.
  WHEN '26'.
  gv04_day = 'двадцать шестое'.
  WHEN '27'.
  gv04_day = 'двадцать седьмое'.
  WHEN '28'.
  gv04_day = 'двадцать восьмое'.
  WHEN '29'.
  gv04_day = 'двадцать девятое'.
  WHEN '30'.
  gv04_day = 'тридцатое'.
  WHEN '31'.
  gv04_day = 'тридцать первое'.
  WHEN OTHERS.
ENDCASE.

CONCATENATE gv04_day gv04_month gv04_year 'года' into gv04_text SEPARATED BY ' '.
write 'Задание 45 from SOLUTION'.
WRITE: / gv04_text.
