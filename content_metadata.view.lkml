view: content_metadata {
  sql_table_name: PUBLIC.CONTENT_METADATA ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: content_id {
    type: number
    sql: ${TABLE}.CONTENT_ID ;;
  }

  dimension: content_type {
    type: string
    sql: ${TABLE}.CONTENT_TYPE ;;
  }

  dimension: inheriting_id {
    type: number
    sql: ${TABLE}.INHERITING_ID ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.PARENT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, content_metadata_group_user.count, dashboard.count, look.count, space.count]
  }
}
