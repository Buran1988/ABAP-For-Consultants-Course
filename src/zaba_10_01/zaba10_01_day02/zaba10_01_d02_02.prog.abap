*&---------------------------------------------------------------------*
*& Report ZABA10_01_D02_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_d02_02.

DATA gtd_01_spfli TYPE TABLE OF spfli.
DATA gtd_01_spfli_filt TYPE TABLE OF spfli.
PARAMETERS: p_cityf TYPE spfli-cityfrom.

SELECT * FROM spfli INTO TABLE gtd_01_spfli.

LOOP AT gtd_01_spfli INTO DATA(ls_line) WHERE cityfrom = p_cityf.
  APPEND ls_line TO gtd_01_spfli_filt.
ENDLOOP.

cl_demo_output=>display(
*    EXPORTING
    data    = gtd_01_spfli_filt
*      name    =
*      exclude =
*      include =
).
