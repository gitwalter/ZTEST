*&---------------------------------------------------------------------*
*& Report ztest_sql_upper_conversion
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
report ztest_sql_upper_conversion.

data(query) = 'rfc'.
data(rows)  = 100.

query =  `%` && to_upper( query ) && `%`.
select arbgb, msgnr, text, upper( text ) as upper
       from t100
       where sprsl = 'E' and
             upper( text ) like @query
       order by arbgb, msgnr, text
       into table @data(result)
       up to @rows rows.

break-point.
