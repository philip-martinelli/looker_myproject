connection: "thelook"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: order_items {
   join: orders {
     relationship: many_to_one
     sql_on: ${orders.id} = ${order_items.order_id} ;;
   }

   join: users {
     relationship: many_to_one
     sql_on: ${users.id} = ${orders.user_id} ;;
   }
 }


explore: orders {
  from: orders
  view_name: orders_woot_woot
 # view_name: orders_test_woot_woot
}

explore: orders_two {
  extends: [orders]
}


explore: CA_users {
  from: users
  view_name: users
  sql_always_where: ${users.state} = 'California' ;;
}




explore: users_facts {
}
