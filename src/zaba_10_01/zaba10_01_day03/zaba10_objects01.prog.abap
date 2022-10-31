*&---------------------------------------------------------------------*
*& Report ZABA10_OBJECTS01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_objects01.
DATA: go_user1 TYPE REF TO zclaba10_first_class01,
      go_user2 TYPE REF TO zclaba10_first_class01.

data gtd_all_users type TABLE of ref to zclaba10_first_class01.

CREATE OBJECT go_user1 EXPORTING iv_position = 'Рабочий'.

go_user1->gv_name = 'Иван'.
go_user1->gv_surname = 'Петров'.
go_user1->gv_position = 'Менеджер'.

APPEND go_user1 to gtd_all_users.

go_user2 = NEW #( 'Ведущий инженер' ).

go_user2->gv_name = 'Петр'.
go_user2->gv_surname = 'Сидоров'.
go_user2->gv_position = 'Рабочий'.

APPEND go_user2 to gtd_all_users.

LOOP AT gtd_all_users ASSIGNING FIELD-SYMBOL(<lo_this_user>).

 write / <lo_this_user>->get_user_data( ).
ENDLOOP.

*WRITE: / go_user1->get_user_data( ),
*go_user2->get_user_data( ).

WRITE /'Ok!'.
