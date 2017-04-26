view: users {
  sql_table_name: demo_db.users ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip {
    type: number
    sql: ${TABLE}.zip ;;
  }

  # ----- measures ------
  measure: state_filter_count {
    type: sum
    sql: CASE WHEN {% condition state_filter %} ${state} {% endcondition %}
        THEN 1 ELSE NULL END;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: formatted_count {
    type: count
    html:
    {% if value > 1000 %}
      <font color="blue">{{ rendered_value }}</font>
    {% elsif value > 500 %}
      <font color="red">{{ rendered_value }}</font>
    {% else %}
      <font color="yellow">{{ rendered_value }}</font>
    {% endif %} ;;
  }

  # ----- filters ------
  filter: state_filter {
    type: string
    suggestions: ["California","New York"]
  }


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      last_name,
      first_name,
      events.count,
      orders.count,
      user_data.count
    ]
  }
}
