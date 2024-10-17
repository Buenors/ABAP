*&---------------------------------------------------------------------*
*& Report ZR_USER0710_07
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZR_USER0710_07.

TABLES: EKKO,
        EKPO.

Select-options: s_ebeln for EKKO-ebeln.

data: t_ekko type table of EKKO,
      t_ekpo type table of EKPO,
      w_ekko type EKKO,
      v_item type EKKO-ebeln.


START-OF-SELECTION.

SELECT *
  from EKKO
  into table t_ekko
  where ebeln in s_ebeln.

  IF SY-SUBRC = 0.
    SELECT *
      from ekpo
      into table t_ekpo
      for all entries in t_ekko
      where ebeln = t_ekko-ebeln.

  ENDIF.

  LOOP AT t_ekko into w_ekko.
    v_item = w_ekko-ebeln.
  ENDLOOP.

  READ TABLE t_ekko into w_ekko with key ebeln = '3000000004'.
