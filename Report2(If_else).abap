*&---------------------------------------------------------------------*
*& Report ZR_USER0710_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZR_USER0710_02.

PARAMETERS p_marca TYPE c LENGTH 10.

START-OF-SELECTION.

IF p_marca = 'NINHO'.
  Write'Compre'.
 else.
   Write'Não Compre'.
ENDIF.
