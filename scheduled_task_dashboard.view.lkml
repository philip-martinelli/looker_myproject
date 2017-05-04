view: scheduled_task_dashboard {
  sql_table_name: PUBLIC.SCHEDULED_TASK_DASHBOARD ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.CREATED_AT ;;
  }

  dimension: dashboard {
    type: string
    sql: ${TABLE}.DASHBOARD ;;
  }

  dimension: dashboard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DASHBOARD_ID ;;
  }

  dimension: dashboard_path {
    type: string
    sql: ${TABLE}.DASHBOARD_PATH ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}.DELETED_AT ;;
  }

  dimension: format {
    type: string
    sql: ${TABLE}.FORMAT ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.MODEL ;;
  }

  dimension: scheduled_task_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SCHEDULED_TASK_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, dashboard.id, scheduled_task.id]
  }
}
