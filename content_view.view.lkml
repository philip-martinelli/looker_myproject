view: content_view {
  sql_table_name: PUBLIC.CONTENT_VIEW ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: content_id {
    type: string
    sql: ${TABLE}.CONTENT_ID ;;
  }

  dimension: content_type {
    type: string
    sql: ${TABLE}.CONTENT_TYPE ;;
  }

  dimension: favorite_count {
    type: number
    sql: ${TABLE}.FAVORITE_COUNT ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GROUP_ID ;;
  }

  dimension_group: last_viewed {
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
    sql: ${TABLE}.LAST_VIEWED_AT ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.USER_ID ;;
  }

  dimension: view_count {
    type: number
    sql: ${TABLE}.VIEW_COUNT ;;
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
      group.name,
      group.id
    ]
  }
}
