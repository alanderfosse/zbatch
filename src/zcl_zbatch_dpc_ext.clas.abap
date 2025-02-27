class ZCL_ZBATCH_DPC_EXT definition
  public
  inheriting from ZCL_ZBATCH_DPC
  create public .

public section.

  methods /IWBEP/IF_MGW_CORE_SRV_RUNTIME~CHANGESET_BEGIN
    redefinition .
  methods /IWBEP/IF_MGW_CORE_SRV_RUNTIME~CHANGESET_END
    redefinition .
protected section.

  methods CITYSET_CREATE_ENTITY
    redefinition .
  methods CITYSET_DELETE_ENTITY
    redefinition .
  methods CITYSET_GET_ENTITY
    redefinition .
  methods CITYSET_GET_ENTITYSET
    redefinition .
  methods CITYSET_UPDATE_ENTITY
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_ZBATCH_DPC_EXT IMPLEMENTATION.


  method /IWBEP/IF_MGW_CORE_SRV_RUNTIME~CHANGESET_BEGIN.

  endmethod.


  method /IWBEP/IF_MGW_CORE_SRV_RUNTIME~CHANGESET_END.

  endmethod.


  METHOD cityset_create_entity.
    DATA: ls_city TYPE zcl_zbatch_mpc=>ts_city.

    TRY.
        CALL METHOD io_data_provider->read_entry_data
          IMPORTING
            es_data = ls_city.
      CATCH /iwbep/cx_mgw_tech_exception .
    ENDTRY.

    IF ls_city IS NOT INITIAL.
      INSERT ztb_city FROM ls_city.
    ENDIF.
  ENDMETHOD.


  METHOD cityset_delete_entity.
    DATA: ls_keyprp LIKE LINE OF it_key_tab.

    READ TABLE it_key_tab INTO ls_keyprp INDEX 1.
    IF sy-subrc EQ 0.
      DELETE FROM ztb_city WHERE citynr EQ ls_keyprp-value.
    ENDIF.
  ENDMETHOD.


  METHOD cityset_get_entity.
    DATA: ls_keyprp LIKE LINE OF it_key_tab.

    READ TABLE it_key_tab INTO ls_keyprp INDEX 1.
    IF sy-subrc EQ 0.
      SELECT SINGLE *
        FROM ztb_city
          INTO er_entity
            WHERE citynr EQ ls_keyprp-value.
    ENDIF.
  ENDMETHOD.


  METHOD cityset_get_entityset.
    SELECT *
      FROM ztb_city
        INTO TABLE et_entityset.
  ENDMETHOD.


  METHOD cityset_update_entity.
    DATA: ls_city TYPE zcl_zbatch_mpc=>ts_city.

    TRY.
        CALL METHOD io_data_provider->read_entry_data
          IMPORTING
            es_data = ls_city.
      CATCH /iwbep/cx_mgw_tech_exception .
    ENDTRY.

    IF ls_city IS NOT INITIAL.
      UPDATE ztb_city FROM ls_city.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
