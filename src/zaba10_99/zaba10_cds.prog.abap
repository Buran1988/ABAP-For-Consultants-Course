*&---------------------------------------------------------------------*
*& Report ZABA10_CDS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_CDS.

SELECT * from zaba10_demo1 INTO TABLE @data(my_tab).

 cl_demo_output=>display(
*   EXPORTING
     data    = my_tab
*     name    =
*     exclude =
*     include =
 ).
