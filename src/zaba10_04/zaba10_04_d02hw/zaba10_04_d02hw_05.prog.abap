*&---------------------------------------------------------------------*
*& Report ZABA10_04_D02HW_05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
**********************************************************************
* 47 from SOLUTION
* 47. Напишите исполняемую программу, которая подсчитывает количество гласных в имени пользователя,
* запустившего программу, и выводит результат
**********************************************************************
REPORT ZABA10_04_D02HW_05.

DATA v_vowels_count TYPE i.
DATA v_vowels_total TYPE i.
DATA v_user LIKE sy-uname.

START-OF-SELECTION.
v_user = sy-uname.
TRANSLATE v_user TO UPPER CASE.

* One option
FIND ALL OCCURRENCES OF 'A' IN v_user MATCH COUNT v_vowels_count.
v_vowels_total = v_vowels_total + v_vowels_count.
FIND ALL OCCURRENCES OF 'E' IN v_user MATCH COUNT v_vowels_count.
v_vowels_total = v_vowels_total + v_vowels_count.
FIND ALL OCCURRENCES OF 'I' IN v_user MATCH COUNT v_vowels_count.
v_vowels_total = v_vowels_total + v_vowels_count.
FIND ALL OCCURRENCES OF 'O' IN v_user MATCH COUNT v_vowels_count.
v_vowels_total = v_vowels_total + v_vowels_count.
FIND ALL OCCURRENCES OF 'U' IN v_user MATCH COUNT v_vowels_count.
v_vowels_total = v_vowels_total + v_vowels_count.

* Another option
FIND ALL OCCURRENCES OF REGEX 'A|E|I|O|U' IN v_user MATCH COUNT v_vowels_count.


WRITE v_vowels_total.
