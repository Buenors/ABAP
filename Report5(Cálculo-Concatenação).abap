*&---------------------------------------------------------------------*
*& Report ZR_USER0710_05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZR_USER0710_05.

PARAMETERS: p_leite1 type p decimals 2,
            p_leite2 type p decimals 2.

Data: v_soma type p decimals 2,
      v_texto(12) type c,
      v_escreva(30) type c.

CONSTANTS: c_message(14) type c value 'O resultado é'.

START-OF-SELECTION.

v_soma = p_leite1 + p_leite2.

IF v_soma > 10.
  v_texto = 'maior que 10'.

else.
  v_texto = 'menor que 10'.

ENDIF.

CONCATENATE c_message v_texto into v_escreva SEPARATED BY space.
Write v_escreva.
