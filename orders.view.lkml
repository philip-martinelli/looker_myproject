view: orders {
  sql_table_name: demo_db.orders ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }


  dimension: details_link {
    sql: ${TABLE}.user_id ;;
    html: <a href="/explore/my_project/orders?fields=orders.id,orders.status&f[users.id]={{value}}">Order History</a>
    | <a href="/explore/my_project/orders?fields=users.state,users.city,users.gender,users.first_name,users.last_name&f[users.id]={{value}}">User Info</a>;;
  }




  measure: count {
    type: count
    drill_fields: [id, users.last_name, users.first_name, users.id, order_items.count]
  }
}
