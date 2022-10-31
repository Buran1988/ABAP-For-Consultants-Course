@AbapCatalog.sqlViewName: 'ZABA10_DEMO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Первый CDS'
define view zaba10_demo1
  as select from sflights2
    join         sairport on sflights2.airpfrom = sairport.id
{
  sflights2.airpfrom,
  sairport.name,
  sflights2.carrid,
  sflights2.carrname
}
