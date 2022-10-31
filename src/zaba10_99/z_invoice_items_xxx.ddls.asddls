@AbapCatalog.sqlViewName: 'Z_ITEMS_XXX'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Invoice Items'
define view Z_INVOICE_ITEMS_XXX
  as select from sepm_sddl_so_invoice_item
{
  sepm_sddl_so_invoice_item.currency_code,
  sepm_sddl_so_invoice_item.gross_amount

}
