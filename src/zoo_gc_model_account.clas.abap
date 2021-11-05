CLASS zoo_gc_model_account DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    Methods get_accounts returning value(RT_ZOO_ACCOUNTS) type zoo_tab_accounts.
    Methods set_accounts.
    Methods create_accounts importing IT_ZOO_ACCOUNTS type zoo_tab_accounts.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: IA_T_ZOO_ACCOUNTS type zoo_tab_accounts.
ENDCLASS.



CLASS zoo_gc_model_account IMPLEMENTATION.
  METHOD get_accounts.
      RT_ZOO_ACCOUNTS = IA_T_ZOO_ACCOUNTS.
  ENDMETHOD.

  METHOD set_accounts.
      SELECT * FROM zoo_t_accounts
      INTO TABLE IA_T_ZOO_ACCOUNTS.
  ENDMETHOD.

  METHOD create_accounts.
     insert ZOO_T_ACCOUNTS from table IT_ZOO_ACCOUNTS.
  ENDMETHOD.

ENDCLASS.
