view: dashboard_element {
  sql_table_name: PUBLIC.DASHBOARD_ELEMENT ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: body_text {
    type: string
    sql: ${TABLE}.BODY_TEXT ;;
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

  dimension: dashboard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DASHBOARD_ID ;;
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

  dimension: listen {
    type: string
    sql: ${TABLE}.LISTEN ;;
  }

  dimension: look_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LOOK_ID ;;
  }

  dimension: note_display {
    type: string
    sql: ${TABLE}.NOTE_DISPLAY ;;
  }

  dimension: note_state {
    type: string
    sql: ${TABLE}.NOTE_STATE ;;
  }

  dimension: note_text {
    type: string
    sql: ${TABLE}.NOTE_TEXT ;;
  }

  dimension: refresh_interval {
    type: string
    sql: ${TABLE}.REFRESH_INTERVAL ;;
  }

  dimension: subtitle_text {
    type: string
    sql: ${TABLE}.SUBTITLE_TEXT ;;
  }

  dimension: title_text {
    type: string
    sql: ${TABLE}.TITLE_TEXT ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [id, look.id, dashboard.id, dashboard_layout_component.count]
  }
}
