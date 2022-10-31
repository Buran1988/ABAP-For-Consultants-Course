@AbapCatalog.sqlViewName: 'ZABA1004_CDS_2N'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS Second'
define view zaba1004_CDS_2
  as select from sflights2
    join         sairport on sflights2.airpfrom = sairport.id
{
  sflights2.airpfrom,
  sairport.name,
  sflights2.carrid,
  sflights2.carrname
}
