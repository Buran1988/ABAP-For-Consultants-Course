*&---------------------------------------------------------------------*
*& Report ZABA10_04_D03_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_D03_02.

PARAMETERS p_sum type i.
data gs_sp TYPE spell.

call FUNCTION 'SPELL_AMOUNT'

exporting
  amount = p_sum

 importing
   in_words = gs_sp

 exceptions

  not_found = 1.

if sy-subrc <> 0.
*
endif.

write gs_sp-word.
