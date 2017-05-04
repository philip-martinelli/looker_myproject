view: content_favorite {
  sql_table_name: PUBLIC.CONTENT_FAVORITE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: dashboard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DASHBOARD_ID ;;
  }

  dimension: look_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LOOK_ID ;;
  }

  dimension: lookml_dashboard_id {
    type: string
    sql: ${TABLE}.LOOKML_DASHBOARD_ID ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      dashboard.id,
      look.id,
      user.first_name,
      user.last_name,
      user.dev_mode_user_id,
      user.dev_branch_name
    ]
  }
}
