view: scheduled_task {
  sql_table_name: PUBLIC.SCHEDULED_TASK ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: attempts {
    type: number
    sql: ${TABLE}.ATTEMPTS ;;
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

  dimension: cron_string {
    type: string
    sql: ${TABLE}.CRON_STRING ;;
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

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.ENABLED ;;
  }

  dimension: error {
    type: string
    sql: ${TABLE}.ERROR ;;
  }

  dimension_group: last_delivery_attempt {
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
    sql: ${TABLE}.LAST_DELIVERY_ATTEMPT_AT ;;
  }

  dimension: last_run_at {
    type: number
    sql: ${TABLE}.LAST_RUN_AT ;;
  }

  dimension: next_run_at {
    type: number
    sql: ${TABLE}.NEXT_RUN_AT ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.TIMEZONE ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
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
      user.first_name,
      user.last_name,
      user.dev_mode_user_id,
      user.dev_branch_name,
      mail_job.count,
      scheduled_task_action_email.count,
      scheduled_task_dashboard.count,
      scheduled_task_look.count
    ]
  }
}
