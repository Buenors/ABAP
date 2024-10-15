*&---------------------------------------------------------------------*
*& Report ZR_USER0710_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZR_USER0710_03.

PARAMETERS p_atrasa TYPE c LENGTH 1.

START-OF-SELECTION.

IF p_atrasa = 'S'.
  Write'Caminho A'.
 else.
   Write'Caminho B'.
ENDIF.
