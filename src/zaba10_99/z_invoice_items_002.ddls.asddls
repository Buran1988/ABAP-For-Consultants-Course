@AbapCatalog.sqlViewName: 'Z_ITEMS_002'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Invoice Items'
define view Z_INVOICE_ITEMS_002
  as select from spfli
    join         sairport on spfli.airpfrom = sairport.id
{
  spfli.airpfrom,
  sairport.name as airpfrom_name
}
