*&---------------------------------------------------------------------*
*& Report ztest_cross_join
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
report ztest_cross_join.

start-of-selection.

  select t000~mandt, t000~mtext, t100~*
         from t000 cross join t100
         where t100~arbgb = 'BC'
         order by t000~mandt, t100~sprsl, t100~msgnr
         into table @data(itab).

*  cl_demo_output=>display( itab ).

  try.
      cl_salv_table=>factory(
       importing
        r_salv_table   =  data(lo_salv_table)
        changing
          t_table        = itab ).

      data(lo_toolbar) = lo_salv_table->get_functions( ).

      lo_toolbar->set_all( ).


      lo_salv_table->display( ).


    catch cx_salv_msg.    "
  endtry.
