*&---------------------------------------------------------------------*
*& Report ZABA10_02_DATA_TYPES23
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_02_data_types23.
data: go_user1 TYPE REF TO zclaba10_first_class,
      go_user2 TYPE REF TO zclaba10_first_class..

create OBJECT go_user1.

go_user1->gv_name = 'Иван'.
go_user1->gv_surname = 'Петров'.

go_user2 = NEW #( ).

go_user2->gv_name = 'Степан'.
go_user2->gv_surname = 'Сидоров'.

WRITE 'Ok!'.
