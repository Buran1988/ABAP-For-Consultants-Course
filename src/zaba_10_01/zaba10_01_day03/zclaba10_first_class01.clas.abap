class ZCLABA10_FIRST_CLASS01 definition
  public
  final
  create public .

public section.

  data GV_NAME type STRING .
  data GV_SURNAME type STRING .
  data GV_POSITION type STRING .

  methods CONSTRUCTOR
    importing
      !IV_POSITION type STRING optional .
  methods GET_USER_DATA
    returning
      value(RV_RESULT) type STRING .
protected section.
private section.

  data GV_SALARY type STRING value 1000000 ##NO_TEXT.
ENDCLASS.



CLASS ZCLABA10_FIRST_CLASS01 IMPLEMENTATION.


  METHOD constructor.
    gv_position = iv_position.
    gv_name = 'Не задано'.
    gv_surname = 'Не задано'.
    CASE iv_position.
      WHEN 'Рабочий'.
        gv_salary = 1200.
      WHEN 'Ведущий инженер'.
        gv_salary = 2500.
      WHEN OTHERS.
        gv_salary = 1000.
    ENDCASE.
  ENDMETHOD.


  method GET_USER_DATA.

    rv_result = | Данные о сотруднике { gv_name } { gv_surname } { gv_position }. Зарплата { gv_salary }| .
  endmethod.
ENDCLASS.
