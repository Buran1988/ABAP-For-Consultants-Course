CLASS zclaba10_first_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA gv_name TYPE string .
    DATA gv_surname TYPE string .

    METHODS constructor
      IMPORTING
        !iv_position TYPE string .

    METHODS get_user_data
      RETURNING
        VALUE(rv_result) TYPE string .
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA GV_salary TYPE dec12 .
    DATA GV_position TYPE string .
ENDCLASS.



CLASS ZCLABA10_FIRST_CLASS IMPLEMENTATION.


  METHOD constructor.

    gv_name = 'Не задано'.
    gv_surname = 'Не задано'.
    gv_position = iv_position.
    CASE iv_position.
      WHEN 'Рабочий'.
        gv_salary = 1200.
      WHEN 'Ведущий инженер'.
        gv_salary = 2500.
      WHEN OTHERS.
        gv_salary = 1000.
    ENDCASE.
  ENDMETHOD.


  METHOD get_user_data.
    rv_result = |Данные о сотруднике { gv_name } { gv_surname }. Зарплата { gv_salary } |.

  ENDMETHOD.
ENDCLASS.
