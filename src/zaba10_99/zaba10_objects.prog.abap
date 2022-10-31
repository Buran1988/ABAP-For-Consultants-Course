*&---------------------------------------------------------------------*
*& Report ZABA10_OBJECTS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_objects.

DATA: go_user1 TYPE REF TO zclaba10_first_class,
      go_user2 TYPE REF TO zclaba10_first_class.

DATA gtd_all_users TYPE TABLE OF REF TO zclaba10_first_class.

CREATE OBJECT go_user1 EXPORTING iv_position = 'Рабочий'.

go_user1->gv_name = 'Иван'.
go_user1->gv_surname = 'Петров'.

APPEND go_user1 TO gtd_all_users.

go_user2 = NEW #( 'Ведущий инженер' ).

go_user2->gv_name = 'Степан'.
go_user2->gv_surname = 'Сидоров'.

APPEND go_user2 TO gtd_all_users.

data lo_user TYPE REF TO zclaba10_first_class.

LOOP AT gtd_all_users INTO lo_user. "ASSIGNING FIELD-SYMBOL(<user>) .


  WRITE / lo_user->get_user_data( ).

ENDLOOP.



WRITE / 'Ok!'.
