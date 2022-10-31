*&---------------------------------------------------------------------*
*& Report ZABA10_02_DATA_TYPES20
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_DATA_TYPES20.
data gtd_04_spfli TYPE TABLE of spfli.
data gtd_04_spfli_filt TYPE TABLE of spfli.

PARAMETERS p_cityf TYPE spfli-cityfrom.

* select * from spfli into table gtd_04_spfli WHERE cityfrom = p_cityf.

*  cl_demo_output=>display(
**    EXPORTING
*      data    = gtd_04_spfli
**      name    =
**      exclude =
**      include =
*  ).

select * from spfli into table gtd_04_spfli.

LOOP AT gtd_04_spfli into DATA(ls_04_line)
  where cityfrom = p_cityf.
  APPEND ls_04_line to gtd_04_spfli_filt.
ENDLOOP.



  cl_demo_output=>display(
*    EXPORTING
      data    = gtd_04_spfli_filt
*      name    =
*      exclude =
*      include =
  ).
