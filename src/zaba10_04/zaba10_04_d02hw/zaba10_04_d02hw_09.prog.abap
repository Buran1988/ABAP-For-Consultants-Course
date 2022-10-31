*&---------------------------------------------------------------------*
*& Report ZABA10_04_D02HW_09
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
**********************************************************************
* 55. Напишите исполняемую программу, в которой НЕТ подпрограммы.
* В программе должна быть предусмотрена рабочая область с 5-ю полями разного типа и более.
* Затем он должен быть заполнен, а его поля должны быть напечатаны по одному в строке,
* разделенные одной горизонтальной линией.

* После тестирования программы измените вывод, разделив каждое поле двумя строками.
* Во время этого процесса реорганизуйте свой код, чтобы включить процедуру,
* которая обрабатывает разделение между каждой строкой.


REPORT ZABA10_04_D02HW_09.


DATA: BEGIN OF gs_04_wa,
p_char TYPE c LENGTH 4,
p_int TYPE i,
p_date TYPE d,
p_time TYPE t,
p_string TYPE string,
END OF gs_04_wa.

gs_04_wa-p_char = 'TEXT'.
gs_04_wa-p_int = 33.
gs_04_wa-p_date = '20221010'.
gs_04_wa-p_time = '171717'.
gs_04_wa-p_string = 'Long Text'.

write: 'Задание 55.'.
write: /.
write: / gs_04_wa-p_char.
uline.
write: / gs_04_wa-p_int.
uline.
write: / gs_04_wa-p_date.
uline.
write: / gs_04_wa-p_time.
uline.
write: / gs_04_wa-p_string.
