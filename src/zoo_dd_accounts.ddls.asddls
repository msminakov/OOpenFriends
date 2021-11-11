@AbapCatalog.sqlViewName: 'ZOO_SQL_ACCOUNTS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS View for accounts'
@OData.publish: true

define view ZOO_DD_ACCOUNTS as select from zoo_t_accounts as account {
    key account.client as Client,
    key account.accountid as Accountid,
    account.nickname as Nickname,
    account.firstname as Firstname,
    account.lastname as Lastname
}
