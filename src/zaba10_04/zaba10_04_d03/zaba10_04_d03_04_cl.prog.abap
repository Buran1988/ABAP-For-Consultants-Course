*&---------------------------------------------------------------------*
*& Report ZABA10_04_D03_04_CL
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_D03_04_CL.

data go04_user1 type REF TO zckaba10_04_first_class.
data go04_user2 type REF TO zckaba10_04_first_class.

data gtd04_all_users type TABLE of ref to zckaba10_04_first_class.

CREATE OBJECT go04_user1 EXPORTING iv_position = 'Рабочий'.



go04_user1->gv04_name = 'Name'.
go04_user1->gv04_surname = 'Family'.

APPEND go04_user1 to gtd04_all_users.

go04_user2 = NEW #( 'Ведущий инженер' ).

go04_user2->gv04_name = 'Name2'.
go04_user2->gv04_surname = 'Family2'.

APPEND go04_user2 to gtd04_all_users.

LOOP AT gtd04_all_users ASSIGNING FIELD-SYMBOL(<lo_this_user>).

 write / <lo_this_user>->get_user_data( ).
ENDLOOP.

**write go04_user1->get_user_data( ).
**write go04_user2->get_user_data( ).
