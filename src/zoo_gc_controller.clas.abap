CLASS zoo_gc_controller DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    Methods init_accounts.
    Methods get_accounts returning value(RA_O_MODEL_ACCOUNT) type ref to zoo_gc_model_account.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: IA_O_MODEL_ACCOUNT type ref to zoo_gc_model_account.
ENDCLASS.



CLASS zoo_gc_controller IMPLEMENTATION.
  METHOD get_accounts.
    RA_O_MODEL_ACCOUNT = IA_O_MODEL_ACCOUNT.
  ENDMETHOD.

  METHOD init_accounts.
    create object IA_O_MODEL_ACCOUNT type zoo_gc_model_account.
    call method IA_O_MODEL_ACCOUNT->set_accounts.
  ENDMETHOD.

ENDCLASS.
