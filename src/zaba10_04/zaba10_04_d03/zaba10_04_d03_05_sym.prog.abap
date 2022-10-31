*&---------------------------------------------------------------------*
*& Report ZABA10_04_D03_05_SYM
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_D03_05_SYM.

DATA my04_var TYPE string.

my04_var = 'Привет'.

FIELD-SYMBOLS: <my04_fs> type ANY.

ASSIGN my04_var to <my04_fs>.

WRITE <my04_fs>.

*data my_var TYPE string.
*my_var = 'Всем привет!'.
*
*FIELD-SYMBOLS: <my_fs> TYPE ANY.
*
*ASSIGN my_var TO <my_fs>.
