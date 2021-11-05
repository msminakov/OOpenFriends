*&---------------------------------------------------------------------*
*& Report zoo_p_seed_data
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zoo_p_seed_data.

data: lo_model_account type ref to zoo_gc_model_account.
data: lt_seed_zoo_accounts type zoo_tab_accounts.

" initialize model object for accounts
create object lo_model_account type zoo_gc_model_account.

" fill local table with seed accounts data
DATA wa TYPE zoo_t_accounts.
wa-accountid = '1'.
wa-nickname = 'Puuh'.
wa-firstname = 'Winnie'.
wa-lastname = 'Puuh'.
INSERT wa into table lt_seed_zoo_accounts.
wa-accountid = '2'.
wa-nickname = 'Piglet'.
wa-firstname = 'Piglet'.
wa-lastname = 'Very Tiny Creature'.
INSERT wa into table lt_seed_zoo_accounts.
wa-accountid = '3'.
wa-nickname = 'Eeyore'.
wa-firstname = 'Eeyore'.
wa-lastname = 'pessimistic donkey'.
INSERT wa into table lt_seed_zoo_accounts.

" write seed data into db table
call method lo_model_account->create_accounts exporting IT_ZOO_ACCOUNTS = lt_seed_zoo_accounts.

IF sy-subrc = 0.
    WRITE: / 'Seed data successfully inserted'.
ENDIF.
