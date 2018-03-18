@AbapCatalog.sqlViewName: 'ztstmp_conv'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Timestamp Conversion'
define view ztstmp_conversion
  as select from
    demo_expressions
    {
      tstmp_to_dats( timestamp1,
                     abap_system_timezone( $session.client,'NULL' ),
                     $session.client,
                     'NULL' )      as dat,
      tstmp_to_tims( timestamp1,
                     abap_system_timezone( $session.client,'NULL' ),
                     $session.client,
                     'NULL' )      as tim
    }  
 