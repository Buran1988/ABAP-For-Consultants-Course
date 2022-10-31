*&---------------------------------------------------------------------*
*& Report ZABA10_FM_DEMO1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_fm_demo1.

PARAMETERS p_sum TYPE i.

DATA: gv_chislo TYPE f,
      gv_result TYPE f.
gv_chislo = p_sum.

CALL FUNCTION 'ZFMABA10_POWER_2'
  EXPORTING
    iv_chislo = gv_chislo              " Число для возведения
  IMPORTING
    ev_result = gv_result.             " Результат возведения в степень

DATA gs_spell TYPE spell.

CALL FUNCTION 'SPELL_AMOUNT'
  EXPORTING
    amount    = gv_result               " Сумма/число для преобразования
    currency  = 'RUB'            " Для сумм - валюта, для чисел - пробел
*   filler    = space            " Заполнитель для поля вывода
*   language  = SY-LANGU         " Код языка для преобразования прописью
  IMPORTING
    in_words  = gs_spell                 " Строка полей с суммой/числом и цифрами прописью
  EXCEPTIONS
    not_found = 1                " Аргумент в T015Z не найден
    too_large = 2                " Сумма для преобразования слишком велика
    OTHERS    = 3.
IF sy-subrc <> 0.
* MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*   WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
ENDIF.

WRITE gs_spell-word .
