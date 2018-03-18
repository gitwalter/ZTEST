*&---------------------------------------------------------------------*
*& Report ZTEST_ABAP_FEATURES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
report ztest_abap_features.


start-of-selection.

*  data(go_container) = new cl_gui_custom_container( container_name = 'Tonne' ).
*  data(go_grid) = new cl_gui_alv_grid( i_parent = go_container ).


  data(flight) = value spfli( mandt = sy-mandt
                            carrid = 'LH'
                            connid = '4711'
                            airpfrom = 'MTG'
                            airpto = 'CON' ).
*  data flight type spfli.
  data(flight_at_date) = new sflight( corresponding #( flight ) ).

  break-point.
