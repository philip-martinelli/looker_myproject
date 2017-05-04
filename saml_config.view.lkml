view: saml_config {
  sql_table_name: PUBLIC.SAML_CONFIG ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.ACTIVE ;;
  }

  dimension: alternate_email_login_allowed {
    type: yesno
    sql: ${TABLE}.ALTERNATE_EMAIL_LOGIN_ALLOWED ;;
  }

  dimension: auth_requires_role {
    type: yesno
    sql: ${TABLE}.AUTH_REQUIRES_ROLE ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.ENABLED ;;
  }

  dimension: groups_attribute {
    type: string
    sql: ${TABLE}.GROUPS_ATTRIBUTE ;;
  }

  dimension: idp_audience {
    type: string
    sql: ${TABLE}.IDP_AUDIENCE ;;
  }

  dimension: idp_cert {
    type: string
    sql: ${TABLE}.IDP_CERT ;;
  }

  dimension: idp_issuer {
    type: string
    sql: ${TABLE}.IDP_ISSUER ;;
  }

  dimension: idp_url {
    type: string
    sql: ${TABLE}.IDP_URL ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.MODIFIED_AT ;;
  }

  dimension: modified_by {
    type: number
    sql: ${TABLE}.MODIFIED_BY ;;
  }

  dimension: new_user_migration_types {
    type: string
    sql: ${TABLE}.NEW_USER_MIGRATION_TYPES ;;
  }

  dimension: set_roles_from_groups {
    type: yesno
    sql: ${TABLE}.SET_ROLES_FROM_GROUPS ;;
  }

  dimension_group: test_expires {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.TEST_EXPIRES_AT ;;
  }

  dimension: test_slug {
    type: string
    sql: ${TABLE}.TEST_SLUG ;;
  }

  dimension: user_attribute_map_email {
    type: string
    sql: ${TABLE}.USER_ATTRIBUTE_MAP_EMAIL ;;
  }

  dimension: user_attribute_map_first_name {
    type: string
    sql: ${TABLE}.USER_ATTRIBUTE_MAP_FIRST_NAME ;;
  }

  dimension: user_attribute_map_last_name {
    type: string
    sql: ${TABLE}.USER_ATTRIBUTE_MAP_LAST_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user_attribute_map_first_name, user_attribute_map_last_name, saml_config_default_new_user_role.count, saml_group.count]
  }
}
