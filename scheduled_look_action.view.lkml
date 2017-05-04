view: scheduled_look_action {
  sql_table_name: PUBLIC.SCHEDULED_LOOK_ACTION ;;

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

  dimension: external_email {
    type: string
    sql: ${TABLE}.EXTERNAL_EMAIL ;;
  }

  dimension: scheduled_look_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SCHEDULED_LOOK_ID ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.SLUG ;;
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
      scheduled_look.id
    ]
  }
}
