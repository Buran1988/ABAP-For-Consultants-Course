*----------------------------------------------------------------------*
***INCLUDE ZABA10_01_D03_01_F01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Form ZABA10_01_03
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM zaba10_01_03 USING p_ind.
  DATA lv_ind TYPE i.
  WHILE p_ind < 10.
    ADD 1 TO p_ind.
  ENDWHILE.

ENDFORM.
