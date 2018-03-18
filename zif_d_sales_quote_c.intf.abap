interface ZIF_D_SALES_QUOTE_C
  public .


  interfaces /BOBF/IF_LIB_CONSTANTS .

  constants:
    BEGIN OF SC_ACTION,
      BEGIN OF ITEM,
 CREATE_ITEM                    TYPE /BOBF/ACT_KEY VALUE '080027AF71631EE7B1C2CBF0F3F1C116',
 DELETE_ITEM                    TYPE /BOBF/ACT_KEY VALUE '080027AF71631EE7B1C2CBF0F3F24116',
 SAVE_ITEM                      TYPE /BOBF/ACT_KEY VALUE '080027AF71631EE7B1C2CBF0F3F2C116',
 UPDATE_ITEM                    TYPE /BOBF/ACT_KEY VALUE '080027AF71631EE7B1C2CBF0F3F20116',
 VALIDATE_ITEM                  TYPE /BOBF/ACT_KEY VALUE '080027AF71631EE7B1C2CBF0F3F28116',
      END OF ITEM,
      BEGIN OF ROOT,
 CREATE_ROOT                    TYPE /BOBF/ACT_KEY VALUE '080027AF71631EE7B1C2BDDBD830410D',
 DELETE_ROOT                    TYPE /BOBF/ACT_KEY VALUE '080027AF71631EE7B1C2BDDBD830C10D',
 LOCK_ROOT                      TYPE /BOBF/ACT_KEY VALUE '080027AF71631EE7B1C2BDDBD82F810D',
 PUBLISH                        TYPE /BOBF/ACT_KEY VALUE '080027AF71631EE7B1C3479D9673C165',
 SAVE_ROOT                      TYPE /BOBF/ACT_KEY VALUE '080027AF71631EE7B1C2BDDBD831410D',
 UNLOCK_ROOT                    TYPE /BOBF/ACT_KEY VALUE '080027AF71631EE7B1C2BDDBD82FC10D',
 UPDATE_ROOT                    TYPE /BOBF/ACT_KEY VALUE '080027AF71631EE7B1C2BDDBD830810D',
 VALIDATE_ROOT                  TYPE /BOBF/ACT_KEY VALUE '080027AF71631EE7B1C2BDDBD831010D',
      END OF ROOT,
    END OF SC_ACTION .
  constants:
    BEGIN OF SC_ACTION_ATTRIBUTE,
        BEGIN OF ROOT,
        BEGIN OF LOCK_ROOT,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
        END OF LOCK_ROOT,
        BEGIN OF UNLOCK_ROOT,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
        END OF UNLOCK_ROOT,
      END OF ROOT,
    END OF SC_ACTION_ATTRIBUTE .
  constants:
    BEGIN OF SC_ASSOCIATION,
      BEGIN OF ITEM,
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '080027AF71631EE7B1C2CBF0F3F16116',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '080027AF71631EE7B1C2CBF0F3F1A116',
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '080027AF71631EE7B1C2CBF0F3F30116',
 TO_ROOT                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '080027AF71631EE7B1C2CBF0F3F32116',
      END OF ITEM,
      BEGIN OF ITEM_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '080027AF71631EE7B1C2CBF0F3F34116',
      END OF ITEM_MESSAGE,
      BEGIN OF ITEM_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '080027AF71631EE7B1C2CBF0F3F36116',
      END OF ITEM_PROPERTY,
      BEGIN OF ROOT,
 ITEM                           TYPE /BOBF/OBM_ASSOC_KEY VALUE '080027AF71631EE7B1C2CBF0F3F10116',
 LOCK                           TYPE /BOBF/OBM_ASSOC_KEY VALUE '080027AF71631EE7B1C2BDDBD82F610D',
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '080027AF71631EE7B1C2BDDBD82F210D',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '080027AF71631EE7B1C2BDDBD830210D',
      END OF ROOT,
      BEGIN OF ROOT_LOCK,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '080027AF71631EE7B1C2BDDBD831A10D',
      END OF ROOT_LOCK,
      BEGIN OF ROOT_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '080027AF71631EE7B1C2BDDBD831810D',
      END OF ROOT_MESSAGE,
      BEGIN OF ROOT_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '080027AF71631EE7B1C2BDDBD831C10D',
      END OF ROOT_PROPERTY,
    END OF SC_ASSOCIATION .
  constants:
    BEGIN OF SC_ASSOCIATION_ATTRIBUTE,
      BEGIN OF ITEM,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF ITEM,
      BEGIN OF ROOT,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF ROOT,
    END OF SC_ASSOCIATION_ATTRIBUTE .
  constants:
    SC_BO_KEY  TYPE /BOBF/OBM_BO_KEY VALUE '080027AF71631EE7B1C2BDDBD82E810D' .
  constants:
    SC_BO_NAME TYPE /BOBF/OBM_NAME VALUE 'ZD_SALES_QUOTE' .
  constants:
    SC_MODEL_VERSION TYPE /BOBF/CONF_VERSION VALUE '00000' .
  constants:
    BEGIN OF SC_NODE,
 ITEM                           TYPE /BOBF/OBM_NODE_KEY VALUE '080027AF71631EE7B1C2CBF0F3F0C116',
 ITEM_MESSAGE                   TYPE /BOBF/OBM_NODE_KEY VALUE '080027AF71631EE7B1C2CBF0F3F14116',
 ITEM_PROPERTY                  TYPE /BOBF/OBM_NODE_KEY VALUE '080027AF71631EE7B1C2CBF0F3F18116',
 ROOT                           TYPE /BOBF/OBM_NODE_KEY VALUE '080027AF71631EE7B1C2BDDBD82EC10D',
 ROOT_LOCK                      TYPE /BOBF/OBM_NODE_KEY VALUE '080027AF71631EE7B1C2BDDBD82F410D',
 ROOT_MESSAGE                   TYPE /BOBF/OBM_NODE_KEY VALUE '080027AF71631EE7B1C2BDDBD82F010D',
 ROOT_PROPERTY                  TYPE /BOBF/OBM_NODE_KEY VALUE '080027AF71631EE7B1C2BDDBD830010D',
    END OF SC_NODE .
  constants:
    BEGIN OF SC_NODE_ATTRIBUTE,
      BEGIN OF ITEM,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  ITEM_POS                       TYPE STRING VALUE 'ITEM_POS',
  PRODUCT_ID                     TYPE STRING VALUE 'PRODUCT_ID',
  QUANTITY                       TYPE STRING VALUE 'QUANTITY',
  QUANTITY_UNIT                  TYPE STRING VALUE 'QUANTITY_UNIT',
      END OF ITEM,
      BEGIN OF ROOT,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  QUOTE_ID                       TYPE STRING VALUE 'QUOTE_ID',
  QUOTE_STATUS                   TYPE STRING VALUE 'QUOTE_STATUS',
      END OF ROOT,
    END OF SC_NODE_ATTRIBUTE .
  constants:
    BEGIN OF SC_NODE_CATEGORY,
      BEGIN OF ITEM,
 ITEM                           TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '080027AF71631EE7B1C2CBF0F3F0E116',
      END OF ITEM,
      BEGIN OF ROOT,
 ROOT                           TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '080027AF71631EE7B1C2BDDBD82EE10D',
      END OF ROOT,
    END OF SC_NODE_CATEGORY .
  constants:
    BEGIN OF SC_QUERY,
      BEGIN OF ROOT,
 SELECT_ALL                     TYPE /BOBF/OBM_QUERY_KEY VALUE '080027AF71631EE7B1C2BE257294610D',
 SELECT_BY_ELEMENTS             TYPE /BOBF/OBM_QUERY_KEY VALUE '080027AF71631EE7B1C2BE257295410D',
      END OF ROOT,
    END OF SC_QUERY .
  constants:
    BEGIN OF SC_QUERY_ATTRIBUTE,
      BEGIN OF ROOT,
        BEGIN OF SELECT_BY_ELEMENTS,
 KEY                            TYPE STRING VALUE 'KEY',
 PARENT_KEY                     TYPE STRING VALUE 'PARENT_KEY',
 ROOT_KEY                       TYPE STRING VALUE 'ROOT_KEY',
 NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
 QUOTE_ID                       TYPE STRING VALUE 'QUOTE_ID',
 QUOTE_STATUS                   TYPE STRING VALUE 'QUOTE_STATUS',
        END OF SELECT_BY_ELEMENTS,
      END OF ROOT,
    END OF SC_QUERY_ATTRIBUTE .
endinterface.
