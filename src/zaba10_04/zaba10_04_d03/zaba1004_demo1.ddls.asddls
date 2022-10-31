@AbapCatalog.sqlViewName: 'ZABA1004_DEMO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'cds first'
define view zaba1004_demo1 as select from sflights2 {
airpfrom,
airpto,
carrid,
carrname
}
