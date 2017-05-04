view: history {
  sql_table_name: PUBLIC.HISTORY ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: apply_formatting {
    type: yesno
    sql: ${TABLE}.APPLY_FORMATTING ;;
  }

  dimension: cache {
    type: yesno
    sql: ${TABLE}.CACHE ;;
  }

  dimension: cache_key {
    type: string
    sql: ${TABLE}.CACHE_KEY ;;
  }

  dimension: cache_only {
    type: yesno
    sql: ${TABLE}.CACHE_ONLY ;;
  }

  dimension_group: completed {
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
    sql: ${TABLE}.COMPLETED_AT ;;
  }

  dimension: connection_id {
    type: string
    sql: ${TABLE}.CONNECTION_ID ;;
  }

  dimension: connection_name {
    type: string
    sql: ${TABLE}.CONNECTION_NAME ;;
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
    type: string
    # hidden: yes
    sql: ${TABLE}.DASHBOARD_ID ;;
  }

  dimension: dialect {
    type: string
    sql: ${TABLE}.DIALECT ;;
  }

  dimension: force_production {
    type: yesno
    sql: ${TABLE}.FORCE_PRODUCTION ;;
  }

  dimension: generate_links {
    type: yesno
    sql: ${TABLE}.GENERATE_LINKS ;;
  }

  dimension: look_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LOOK_ID ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.MESSAGE ;;
  }

  dimension: node_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.NODE_ID ;;
  }

  dimension: path_prefix_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PATH_PREFIX_ID ;;
  }

  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QUERY_ID ;;
  }

  dimension: rebuild_pdts {
    type: yesno
    sql: ${TABLE}.REBUILD_PDTS ;;
  }

  dimension: render_key {
    type: string
    sql: ${TABLE}.RENDER_KEY ;;
  }

  dimension: result_format {
    type: string
    sql: ${TABLE}.RESULT_FORMAT ;;
  }

  dimension: result_source {
    type: string
    sql: ${TABLE}.RESULT_SOURCE ;;
  }

  dimension: runtime {
    type: number
    sql: ${TABLE}.RUNTIME ;;
  }

  dimension: server_table_calcs {
    type: yesno
    sql: ${TABLE}.SERVER_TABLE_CALCS ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.SLUG ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  dimension: sql_query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SQL_QUERY_ID ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
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
      connection_name,
      sql_query.id,
      node.id,
      node.hostname,
      path_prefix.id,
      dashboard.id,
      look.id,
      user.first_name,
      user.last_name,
      user.dev_mode_user_id,
      user.dev_branch_name,
      query.id
    ]
  }
}
