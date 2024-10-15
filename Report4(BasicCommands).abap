*&---------------------------------------------------------------------*
*& Report ZR_USER0710_04
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZR_USER0710_04.

TABLES: mara.

SELECTION-SCREEN BEGIN OF BLOCK S WITH FRAME TITLE text-001. "Começo do bloco

SELECT-OPTIONS: s_mat FOR mara-matnr. "este campo vai ter o mesmo formato desse campo

Selection-screen End of block S."Final do bloco

SELECTION-SCREEN BEGIN OF BLOCK P WITH FRAME TITLE text-002.

PARAMETERS p_matnr TYPE mara-matnr.

PARAMETERS p_nome TYPE char20.

Selection-screen End of block P.

SELECTION-SCREEN BEGIN OF BLOCK RA WITH FRAME TITLE text-003.

*DEFAULT 'X' deixa a  o radiobutton selecionado por padrão
PARAMETERS: r_rd1 RADIOBUTTON GROUP A DEFAULT 'X',
            r_rd2 RADIOBUTTON GROUP A.

Selection-screen End of block RA.

SELECTION-SCREEN BEGIN OF BLOCK RB WITH FRAME TITLE text-003.

PARAMETERS: r_rd3 RADIOBUTTON GROUP B,
            r_rd4 RADIOBUTTON GROUP B DEFAULT 'X'.

Selection-screen End of block RB.

CONSTANTS: c_henrique(8) type c Value 'HENRIQUE'. "c_henrique(8) type c == c_henrique type char8

DATA: v_material type mara-matnr,
      v_nome TYPE char20.


START-OF-SELECTION.

v_material = p_matnr.
v_nome = p_nome.

IF p_nome = c_henrique.
  Write c_henrique.
ENDIF.
