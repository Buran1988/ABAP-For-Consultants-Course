FUNCTION zfmaba10_power_2.
*"----------------------------------------------------------------------
*"*"Локальный интерфейс:
*"  IMPORTING
*"     REFERENCE(IV_CHISLO) TYPE  F
*"  EXPORTING
*"     REFERENCE(EV_RESULT) TYPE  F
*"----------------------------------------------------------------------


  ev_result = iv_chislo * iv_chislo.


ENDFUNCTION.
