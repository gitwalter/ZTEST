@AbapCatalog.sqlViewName: 'zobjects_today'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Objekte heute angelegt'
define view zobjects_created_today
  as select from
    tadir
    {
      devclass,
      pgmid,
      object,
      obj_name
    }
    where
      created_on = $session.system_date  
 