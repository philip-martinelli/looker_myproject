view: whitelabel_configuration {
  sql_table_name: PUBLIC.WHITELABEL_CONFIGURATION ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: default_title {
    type: string
    sql: ${TABLE}.DEFAULT_TITLE ;;
  }

  dimension: favicon_file {
    type: string
    sql: ${TABLE}.FAVICON_FILE ;;
  }

  dimension: logo_file {
    type: string
    sql: ${TABLE}.LOGO_FILE ;;
  }

  dimension: show_docs {
    type: yesno
    sql: ${TABLE}.SHOW_DOCS ;;
  }

  dimension: show_help_menu {
    type: yesno
    sql: ${TABLE}.SHOW_HELP_MENU ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
