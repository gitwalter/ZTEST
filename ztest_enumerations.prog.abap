*&---------------------------------------------------------------------*
*& Report ztest_enumerations
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
report ztest_enumerations.
*https://blogs.sap.com/2016/10/10/abap-news-release-7.51-enumerations/
types:
  basetype type c length 2,
  begin of enum tsize base type basetype,
    size_i  value is initial,
    size_s  value `S`,
    size_m  value `M`,
    size_l  value `L`,
    size_xl value `XL`,
  end of enum tsize.


class shirt definition.
  public section.
    types:
      begin of enum tsize,
        size_s,
        size_m,
        size_l,
        size_xl,
      end of enum tsize,
      begin of enum color base type c,
         none value is initial,
         red value 'r',
         blue value 'b',
         green value 'g',
         yellow value 'y',
      end of enum color.
    methods
      constructor importing size type tsize
                            color type color.
  private section.
    data
      size type tsize.
endclass.

class shirt implementation.
  method constructor.
    me->size = size.
  endmethod.
endclass.

start-of-selection.
  data(shirt) = new shirt( size = shirt=>size_xl color = shirt=>red ).
  data(shirt2) = new shirt( size = shirt=>size_s color = shirt=>blue  ).
  data(size) = value tsize( ).

  data(enum_descr) = cast cl_abap_enumdescr(
    cl_abap_typedescr=>describe_by_data( size ) ).

  cl_demo_output=>new(
    )->write_data( enum_descr->kind            "E, for elementary
    )->write_data( enum_descr->type_kind       "k, new for enumerated type
    )->write_data( enum_descr->base_type_kind  "I, the base type
    )->write_data( enum_descr->members         "Table of constants and values
    )->display( ).
