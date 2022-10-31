FUNCTION ZFMABA10_POWER_22.
*"----------------------------------------------------------------------
*"*"Локальный интерфейс:
*"  IMPORTING
*"     REFERENCE(IV_CHISLO) TYPE  I
*"  EXPORTING
*"     REFERENCE(EV_REZ) TYPE  I
*"----------------------------------------------------------------------

ev_rez = iv_chislo * iv_chislo.


ENDFUNCTION.
