class ZCKABA10_04_FIRST_CLASS definition
  public
  final
  create public .

public section.

  data GV04_NAME type STRING .
  data GV04_SURNAME type STRING .

  methods CONSTRUCTOR
    importing
      !IV_POSITION type STRING optional .
  methods GET_USER_DATA
    returning
      value(GV04_RESULT) type STRING .
protected section.
private section.

  data GV04_SALARY type DEC12 .
  data GV04_POSITION type STRING .
ENDCLASS.



CLASS ZCKABA10_04_FIRST_CLASS IMPLEMENTATION.


  METHOD constructor.
    gv04_position = iv_position.
    gv04_name = 'Не задано'.
    gv04_surname = 'Не задано'.
    CASE iv_position.
      WHEN 'Рабочий'.
        gv04_salary = 1200.
      WHEN 'Ведущий инженер'.
        gv04_salary = 2500.
      WHEN OTHERS.
        gv04_salary = 1000.
    ENDCASE.
  ENDMETHOD.


  method GET_USER_DATA.
    gv04_result = |Данные о сотруднике { gv04_name } { gv04_surname } Зарплата { gv04_salary } |.
  endmethod.
ENDCLASS.
