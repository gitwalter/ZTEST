*&---------------------------------------------------------------------*
*& Report ZTEST_FILL_ALV_TEST_TABLE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
report ztest_fill_alv_test_table.
data: testrecord type                   alv_t_t2,
      testdata   type standard table of alv_t_t2.

start-of-selection.

  select * from sv_flights into table @data(flights).

  loop at flights assigning field-symbol(<flight>).
    move-corresponding <flight> to testrecord.
    insert testrecord into table testdata.
  endloop.

  delete from alv_t_t2.
  insert alv_t_t2 from table testdata.
  commit work.
  try.
      cl_salv_table=>factory(
        importing
          r_salv_table   = data(alv)    " Basisklasse einfache ALV Tabellen
        changing
          t_table        = testdata ).
    catch cx_salv_msg.    "
  endtry.
  alv->display( ).
