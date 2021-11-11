class ZCL_ZOO_DD_ACCOUNTS definition
  public
  inheriting from CL_SADL_GTK_EXPOSURE_MPC
  final
  create public .

public section.
protected section.

  methods GET_PATHS
    redefinition .
  methods GET_TIMESTAMP
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_ZOO_DD_ACCOUNTS IMPLEMENTATION.


  method GET_PATHS.
et_paths = VALUE #(
( |CDS~ZOO_DD_ACCOUNTS| )
).
  endmethod.


  method GET_TIMESTAMP.
RV_TIMESTAMP = 20211111185504.
  endmethod.
ENDCLASS.
