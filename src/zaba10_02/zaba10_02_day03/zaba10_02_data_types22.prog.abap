*&---------------------------------------------------------------------*
*& Report ZABA10_02_DATA_TYPES22
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_DATA_TYPES22.
PARAMETERS p_sum TYPE string.
data gs_sp type spell.

CALL FUNCTION 'SPELL_AMOUNT'
  EXPORTING
    amount    = p_sum                " Сумма/число для преобразования
   currency  = 'RUB'            " Для сумм - валюта, для чисел - пробел
*   filler    = space            " Заполнитель для поля вывода
*   language  = SY-LANGU         " Код языка для преобразования прописью
  IMPORTING
    in_words  = gs_sp                 " Строка полей с суммой/числом и цифрами прописью
  exceptions
    not_found = 1                " Аргумент в T015Z не найден
    too_large = 2                " Сумма для преобразования слишком велика
    others    = 3.
IF sy-subrc <> 0.
* MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*   WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
ENDIF.

WRITE gs_sp-word.
