@AbapCatalog.sqlViewName: 'ZCDS_UPPER' 
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS Uppercase'
define view Zdemo_Cds_Upper 
  as select from 
    t100 
    { 
      sprsl, 
      arbgb, 
      msgnr, 
      text, 
      upper(text) as upper_text 
    }  
 