*&---------------------------------------------------------------------*
*& Report zexemplo_livro_pag_336_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zexemplo_livro_pag_336_eri001.

CLASS cl_encapsulation_demo DEFINITION.
  PUBLIC SECTION.
    METHODS print.

    METHODS set_copies IMPORTING copies TYPE i.

    METHODS get_counter EXPORTING counter TYPE i.

  PROTECTED SECTION.
    METHODS reset_counter.

  PRIVATE SECTION.
    DATA copies TYPE i.
    DATA counter TYPE i.

    METHODS reset_copies.
ENDCLASS.

CLASS cl_encapsulation_demo IMPLEMENTATION.
  METHOD print. "Business logic goes here
  ENDMETHOD.

  METHOD set_copies.
    me->copies = copies.
  ENDMETHOD.

  METHOD get_counter.
    counter = me->counter.
  ENDMETHOD.

  METHOD reset_counter.
    CLEAR counter.
  ENDMETHOD.

  METHOD reset_copies.
    CLEAR copies.
  ENDMETHOD.

ENDCLASS.

CLASS cl_encapsulation_sub_demo DEFINITION INHERITING FROM cl_encapsulation_demo.
  PROTECTED SECTION.
    METHODS reset_counter REDEFINITION.
ENDCLASS.

CLASS cl_encapsulation_sub_demo IMPLEMENTATION.
  METHOD reset_counter.
    super->reset_counter( ).
*            SUPER->reset_COPIES( ). " Gives syntax error
  ENDMETHOD.
ENDCLASS.
