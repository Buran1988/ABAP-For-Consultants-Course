*&---------------------------------------------------------------------*
*& Report ZABA10_04_D02HW_06
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
**********************************************************************
* 48. Напишите исполняемую программу, которая подсчитывает длину строки и,
* если она больше 20 символов, пишет «Слишком большая».
* Если нет, напишите длину строки.

**********************************************************************
* 49. Напишите исполняемую программу, которая считает от 1 до 100
* и для каждого числа, кратного 8, напишите сообщение: «Число [число] кратно 8».

**********************************************************************

REPORT ZABA10_04_D02HW_06.

DATA gv04_48_01 TYPE I.

PARAMETERS p04_481 TYPE STRING.

gv04_48_01 = strlen( p04_481 ).

IF gv04_48_01 > 20.
  WRITE 'Слишком большая'.
else.
  WRITE: 'Длина строки ', gv04_48_01.
ENDIF.

DATA gv04_49_01 TYPE i.


gv04_49_01 = 1.

DO 100 TIMES.
  if gv04_49_01 mod 8 = 0.
    write: / |Число  { gv04_49_01 }  кратно 8|.
  endif.
  gv04_49_01 = gv04_49_01 + 1.
ENDDO.

*DATA gv04_49_02 TYPE F.
*gv04_49_02 = 5 div 2.
*write: / gv04_49_02.
*
*gv04_49_02 = 8 mod 8 .
*write: / gv04_49_02.