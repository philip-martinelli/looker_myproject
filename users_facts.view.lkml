view: users_facts {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT
        user_id as user_id
        , COUNT(*) as lifetime_orders
        , MAX(orders.created_at) as most_recent_purchase_at
        , MIN(orders.created_at) as earliest_purchase_at
        ,DATEDIFF(MAX(orders.created_at),MIN(orders.created_at)) as diff
        ,COUNT(*)/12 as average_orders_per_month
      FROM orders
      GROUP BY user_id
      ;;
    persist_for: "1 hour"
    indexes: ["user_id"]
  }

  # Define your dimensions and measures here, like this:
  dimension: user_id {
    description: "Unique ID for each user that has ordered"
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: lifetime_orders {
    description: "The total number of orders for each user"
    type: number
    sql: ${TABLE}.lifetime_orders ;;
  }

  dimension_group: most_recent_purchase {
    description: "The date when each user last ordered"
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.most_recent_purchase_at ;;
  }

  dimension_group: earliest_purchase {
    description: "The date when each user last ordered"
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.earliest_purchase_at ;;
  }

  dimension: diff {
    type: number
    sql: ${TABLE}.diff;;
  }

  dimension: repeat_customer {
    type: yesno
    sql: ${TABLE}.diff >= 1;;
  }

  dimension: average_orders_per_month {
    type: number
    sql: ROUND(${TABLE}.average_orders_per_month,2) ;;
  }

  dimension: date_diff {
    type: number
    sql: DATEDIFF(DATE(${TABLE}.most_recent_purchase_at),DATE(${TABLE}.earliest_purchase_at )) ;;
    label: "Max/Min Diff"
  }

#   measure: date_diff_av {
#     type: average
#     sql: ${date_diff} ;;
#   }

#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
}
