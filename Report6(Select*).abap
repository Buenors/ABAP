*&---------------------------------------------------------------------*
*& Report ZR_USER0710_06
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZR_USER0710_06.

Tables: ZTCLIENTES0710.

parameters: p_CPF type ZTCLIENTES0710-CPF.

data: t_ZTCLIENTES0710 type table of ZTCLIENTES0710.


START-OF-SELECTION.

SELECT *
  from ZTCLIENTES0710
  into table t_ZTCLIENTES0710
  where CPF = p_CPF.

  IF t_ZTCLIENTES0710 is not INITIAL. "Não é vazia
    write'Dados encontrados'.

  else.
    write'Dados não encontrados'.

  ENDIF.
