class ZCL_D_A_PUBLISH definition
  public
  inheriting from /BOBF/CL_LIB_A_SUPERCLASS
  final
  create public .

public section.

  methods /BOBF/IF_FRW_ACTION~EXECUTE
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_D_A_PUBLISH IMPLEMENTATION.


  method /bobf/if_frw_action~execute.
    data lr_root type ref to zds_root. " Combined structure
    data lt_changed_fields type /bobf/t_frw_name.
    data ls_key type /bobf/s_frw_key.
    " Prepare update information
    create data lr_root. lr_root->quote_status = 'P'.

    "Published
    append zif_d_sales_quote_c=>sc_node_attribute-root-quote_status to lt_changed_fields.

    " Do update
    loop at it_key into ls_key.
      io_modify->update( exporting iv_node = zif_d_sales_quote_c=>sc_node-root iv_key = ls_key-key is_data = lr_root it_changed_fields = lt_changed_fields ).
    endloop.
  endmethod.
ENDCLASS.
