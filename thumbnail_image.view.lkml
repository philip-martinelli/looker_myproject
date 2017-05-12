view: thumbnail_image {
  sql_table_name: PUBLIC.THUMBNAIL_IMAGE ;;

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

  dimension: error_message {
    type: string
    sql: ${TABLE}.ERROR_MESSAGE ;;
  }

  dimension: last_duration {
    type: number
    sql: ${TABLE}.LAST_DURATION ;;
  }

  dimension: last_queue_duration {
    type: number
    sql: ${TABLE}.LAST_QUEUE_DURATION ;;
  }

  dimension: last_render_duration {
    type: number
    sql: ${TABLE}.LAST_RENDER_DURATION ;;
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

  dimension_group: processing_finished {
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
    sql: ${TABLE}.PROCESSING_FINISHED_AT ;;
  }

  dimension_group: processing_started {
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
    sql: ${TABLE}.PROCESSING_STARTED_AT ;;
  }

  dimension_group: rendering_started {
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
    sql: ${TABLE}.RENDERING_STARTED_AT ;;
  }

  dimension_group: scheduled {
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
    sql: ${TABLE}.SCHEDULED_AT ;;
  }

  measure: count {
    type: count
    drill_fields: [id, dashboard.id, look.id]
  }
}
