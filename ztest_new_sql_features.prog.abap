*&---------------------------------------------------------------------*
*& Report ztest_new_sql_features
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
report ztest_new_sql_features.

start-of-selection.

  select carrid, connid, fldate, seatsocc, seatsmax
         from sflight
         where seatsmax = sflight~seatsocc
         into table @data(sflight_tab).

  break-point.

  select from spfli
       fields concat( concat( carrid, connid ), countryfr ) as info
       into table @data(table).

  break-point.

  data(query) = `wählen`.
  data(rows)  = 100.

  query =  `%` && to_upper( query ) && `%`.
  select arbgb, msgnr, text
         from t100
         where sprsl = 'D' and
               upper( text ) like @query
         order by arbgb, msgnr, text
         into table @data(result)
         up to @rows rows.

  break-point.
