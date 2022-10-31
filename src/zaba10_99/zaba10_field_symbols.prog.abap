*&---------------------------------------------------------------------*
*& Report ZABA10_FIELD_SYMBOLS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_FIELD_SYMBOLS.

data my_var TYPE string.
my_var = 'Всем привет!'.

FIELD-SYMBOLS: <my_fs> TYPE ANY.

ASSIGN my_var TO <my_fs>.

WRITE <my_fs>.
