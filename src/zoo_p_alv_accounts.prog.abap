*&---------------------------------------------------------------------*
*& Report zoo_p_alv_accounts
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zoo_p_alv_accounts.

START-OF-SELECTION.
*---------
* Controller
*---------
  DATA: lo_control TYPE REF TO ZOO_GC_CONTROLLER,
        lo_accounts TYPE REF TO ZOO_GC_MODEL_ACCOUNT,
        lt_accounts TYPE zoo_tab_accounts.

  CREATE OBJECT lo_control.

  CALL METHOD lo_control->init_accounts.

*---------
* Model
*---------

  CALL METHOD lo_control->get_accounts RECEIVING  RA_O_MODEL_ACCOUNT = lo_accounts.

  CALL METHOD lo_accounts->get_accounts RECEIVING RT_ZOO_ACCOUNTS = lt_accounts.

*---------
* View - ALV output
*---------
  DATA: lo_alv TYPE REF TO cl_salv_table.
*
  DATA: lx_msg TYPE REF TO cx_salv_msg.
  TRY.
      cl_salv_table=>factory(
        IMPORTING
          r_salv_table = lo_alv
        CHANGING
          t_table      = lt_accounts ).
    CATCH cx_salv_msg INTO lx_msg.
  ENDTRY.
*
*
* Displaying the ALV
  lo_alv->display( ).
