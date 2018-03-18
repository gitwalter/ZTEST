*&---------------------------------------------------------------------*
*& Report ztest_common_table_expressions
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
report ztest_common_table_expressions.

data carrid type spfli-carrid value 'AA'.

start-of-selection.


  with
   +cities as (
     select cityfrom as city
            from spfli
            where carrid = @carrid
     union distinct
     select cityto as city
            from spfli
            where carrid = @carrid )
   select *
          from sgeocity
          where city in ( select city
                                 from +cities )
          into table @data(result).

  cl_demo_output=>display( result ).
