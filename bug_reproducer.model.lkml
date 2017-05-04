connection: "looker"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: access_token {
  join: credentials_api3 {
    type: left_outer
    sql_on: ${access_token.credentials_api3_id} = ${credentials_api3.id} ;;
    relationship: many_to_one
  }

  join: session {
    type: left_outer
    sql_on: ${access_token.session_id} = ${session.id} ;;
    relationship: many_to_one
  }

  join: role {
    type: left_outer
    sql_on: ${access_token.role_id} = ${role.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${access_token.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: access_token {
    type: left_outer
    sql_on: ${session.access_token_id} = ${access_token.id} ;;
    relationship: many_to_one
  }

  join: model_set {
    type: left_outer
    sql_on: ${role.model_set_id} = ${model_set.id} ;;
    relationship: many_to_one
  }

  join: permission_set {
    type: left_outer
    sql_on: ${role.permission_set_id} = ${permission_set.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: active_derived_table {}

explore: api_nonce {
  join: user {
    type: left_outer
    sql_on: ${api_nonce.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: artifact {}

explore: backup_configuration {}

explore: cache_index {
  join: node {
    type: left_outer
    sql_on: ${cache_index.node_id} = ${node.id} ;;
    relationship: many_to_one
  }
}

explore: content_favorite {
  join: dashboard {
    type: left_outer
    sql_on: ${content_favorite.dashboard_id} = ${dashboard.id} ;;
    relationship: many_to_one
  }

  join: look {
    type: left_outer
    sql_on: ${content_favorite.look_id} = ${look.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${content_favorite.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${dashboard.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${dashboard.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: query {
    type: left_outer
    sql_on: ${look.query_id} = ${query.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: content_metadata {}

explore: content_metadata_group_user {
  join: group {
    type: left_outer
    sql_on: ${content_metadata_group_user.group_id} = ${group.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${content_metadata_group_user.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${content_metadata_group_user.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: content_usage {}

explore: content_view {
  join: user {
    type: left_outer
    sql_on: ${content_view.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: group {
    type: left_outer
    sql_on: ${content_view.group_id} = ${group.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: credentials_api {
  join: user {
    type: left_outer
    sql_on: ${credentials_api.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: credentials_api3 {
  join: user {
    type: left_outer
    sql_on: ${credentials_api3.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: credentials_email {
  join: user {
    type: left_outer
    sql_on: ${credentials_email.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: credentials_embed {
  join: user {
    type: left_outer
    sql_on: ${credentials_embed.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: credentials_ephemeral {
  join: user {
    type: left_outer
    sql_on: ${credentials_ephemeral.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: credentials_google {
  join: user {
    type: left_outer
    sql_on: ${credentials_google.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: credentials_ldap {
  join: user {
    type: left_outer
    sql_on: ${credentials_ldap.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: credentials_looker_openid {
  join: user {
    type: left_outer
    sql_on: ${credentials_looker_openid.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: credentials_saml {
  join: user {
    type: left_outer
    sql_on: ${credentials_saml.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: credentials_totp {
  join: user {
    type: left_outer
    sql_on: ${credentials_totp.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: dashboard {
  join: user {
    type: left_outer
    sql_on: ${dashboard.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${dashboard.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${dashboard.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: dashboard_element {
  join: look {
    type: left_outer
    sql_on: ${dashboard_element.look_id} = ${look.id} ;;
    relationship: many_to_one
  }

  join: dashboard {
    type: left_outer
    sql_on: ${dashboard_element.dashboard_id} = ${dashboard.id} ;;
    relationship: many_to_one
  }

  join: query {
    type: left_outer
    sql_on: ${look.query_id} = ${query.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${look.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${look.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${look.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: dashboard_filter {
  join: dashboard {
    type: left_outer
    sql_on: ${dashboard_filter.dashboard_id} = ${dashboard.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dashboard.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${dashboard.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${dashboard.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: dashboard_layout {
  join: dashboard {
    type: left_outer
    sql_on: ${dashboard_layout.dashboard_id} = ${dashboard.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dashboard.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${dashboard.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${dashboard.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: dashboard_layout_component {
  join: dashboard_element {
    type: left_outer
    sql_on: ${dashboard_layout_component.dashboard_element_id} = ${dashboard_element.id} ;;
    relationship: many_to_one
  }

  join: dashboard_layout {
    type: left_outer
    sql_on: ${dashboard_layout_component.dashboard_layout_id} = ${dashboard_layout.id} ;;
    relationship: many_to_one
  }

  join: look {
    type: left_outer
    sql_on: ${dashboard_element.look_id} = ${look.id} ;;
    relationship: many_to_one
  }

  join: dashboard {
    type: left_outer
    sql_on: ${dashboard_element.dashboard_id} = ${dashboard.id} ;;
    relationship: many_to_one
  }

  join: query {
    type: left_outer
    sql_on: ${look.query_id} = ${query.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${look.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${look.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${look.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: db_connection {
  join: user {
    type: left_outer
    sql_on: ${db_connection.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: db_credentials {
  join: user {
    type: left_outer
    sql_on: ${db_credentials.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: distributed_mutex {
  join: node {
    type: left_outer
    sql_on: ${distributed_mutex.node_id} = ${node.id} ;;
    relationship: many_to_one
  }
}

explore: embed_config {}

explore: embed_nonce {}

explore: embed_secret {
  join: user {
    type: left_outer
    sql_on: ${embed_secret.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: event {
  join: user {
    type: left_outer
    sql_on: ${event.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: event_attribute {
  join: event {
    type: left_outer
    sql_on: ${event_attribute.event_id} = ${event.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${event.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: field_usage {}

explore: group {}

explore: group_group {}

explore: group_user {
  join: user {
    type: left_outer
    sql_on: ${group_user.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: group {
    type: left_outer
    sql_on: ${group_user.group_id} = ${group.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: history {
  join: sql_query {
    type: left_outer
    sql_on: ${history.sql_query_id} = ${sql_query.id} ;;
    relationship: many_to_one
  }

  join: node {
    type: left_outer
    sql_on: ${history.node_id} = ${node.id} ;;
    relationship: many_to_one
  }

  join: path_prefix {
    type: left_outer
    sql_on: ${history.path_prefix_id} = ${path_prefix.id} ;;
    relationship: many_to_one
  }

  join: dashboard {
    type: left_outer
    sql_on: ${history.dashboard_id} = ${dashboard.id} ;;
    relationship: many_to_one
  }

  join: look {
    type: left_outer
    sql_on: ${history.look_id} = ${look.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${history.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: query {
    type: left_outer
    sql_on: ${history.query_id} = ${query.id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${dashboard.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${dashboard.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: homepage_item {
  join: dashboard {
    type: left_outer
    sql_on: ${homepage_item.dashboard_id} = ${dashboard.id} ;;
    relationship: many_to_one
  }

  join: look {
    type: left_outer
    sql_on: ${homepage_item.look_id} = ${look.id} ;;
    relationship: many_to_one
  }

  join: homepage_section {
    type: left_outer
    sql_on: ${homepage_item.homepage_section_id} = ${homepage_section.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dashboard.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${dashboard.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${dashboard.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }

  join: query {
    type: left_outer
    sql_on: ${look.query_id} = ${query.id} ;;
    relationship: many_to_one
  }
}

explore: homepage_section {}

explore: ldap_config {}

explore: ldap_config_default_new_user_role {
  join: ldap_config {
    type: left_outer
    sql_on: ${ldap_config_default_new_user_role.ldap_config_id} = ${ldap_config.id} ;;
    relationship: many_to_one
  }

  join: role {
    type: left_outer
    sql_on: ${ldap_config_default_new_user_role.role_id} = ${role.id} ;;
    relationship: many_to_one
  }

  join: model_set {
    type: left_outer
    sql_on: ${role.model_set_id} = ${model_set.id} ;;
    relationship: many_to_one
  }

  join: permission_set {
    type: left_outer
    sql_on: ${role.permission_set_id} = ${permission_set.id} ;;
    relationship: many_to_one
  }
}

explore: ldap_group {
  join: ldap_config {
    type: left_outer
    sql_on: ${ldap_group.ldap_config_id} = ${ldap_config.id} ;;
    relationship: many_to_one
  }

  join: group {
    type: left_outer
    sql_on: ${ldap_group.group_id} = ${group.id} ;;
    relationship: many_to_one
  }
}

explore: ldap_group_role {
  join: role {
    type: left_outer
    sql_on: ${ldap_group_role.role_id} = ${role.id} ;;
    relationship: many_to_one
  }

  join: ldap_group {
    type: left_outer
    sql_on: ${ldap_group_role.ldap_group_id} = ${ldap_group.id} ;;
    relationship: many_to_one
  }

  join: model_set {
    type: left_outer
    sql_on: ${role.model_set_id} = ${model_set.id} ;;
    relationship: many_to_one
  }

  join: permission_set {
    type: left_outer
    sql_on: ${role.permission_set_id} = ${permission_set.id} ;;
    relationship: many_to_one
  }

  join: ldap_config {
    type: left_outer
    sql_on: ${ldap_group.ldap_config_id} = ${ldap_config.id} ;;
    relationship: many_to_one
  }

  join: group {
    type: left_outer
    sql_on: ${ldap_group.group_id} = ${group.id} ;;
    relationship: many_to_one
  }
}

explore: login {
  join: user {
    type: left_outer
    sql_on: ${login.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: login_attempt {}

explore: look {
  join: query {
    type: left_outer
    sql_on: ${look.query_id} = ${query.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${look.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${look.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${look.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: lookml_model {}

explore: lookml_model_db_connection {
  join: db_connection {
    type: left_outer
    sql_on: ${lookml_model_db_connection.db_connection_id} = ${db_connection.id} ;;
    relationship: many_to_one
  }

  join: lookml_model {
    type: left_outer
    sql_on: ${lookml_model_db_connection.lookml_model_id} = ${lookml_model.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${db_connection.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: mail_job {
  join: scheduled_task {
    type: left_outer
    sql_on: ${mail_job.scheduled_task_id} = ${scheduled_task.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${scheduled_task.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: model_set {}

explore: new_active_derived_table {}

explore: node {}

explore: one_time_key {}

explore: path_prefix {}

explore: pdt_event_log {}

explore: permission_set {}

explore: prefetch {}

explore: project_configuration {}

explore: query {}

explore: render_job {
  join: user {
    type: left_outer
    sql_on: ${render_job.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: node {
    type: left_outer
    sql_on: ${render_job.node_id} = ${node.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: role {
  join: model_set {
    type: left_outer
    sql_on: ${role.model_set_id} = ${model_set.id} ;;
    relationship: many_to_one
  }

  join: permission_set {
    type: left_outer
    sql_on: ${role.permission_set_id} = ${permission_set.id} ;;
    relationship: many_to_one
  }
}

explore: role_group {
  join: group {
    type: left_outer
    sql_on: ${role_group.group_id} = ${group.id} ;;
    relationship: many_to_one
  }

  join: role {
    type: left_outer
    sql_on: ${role_group.role_id} = ${role.id} ;;
    relationship: many_to_one
  }

  join: model_set {
    type: left_outer
    sql_on: ${role.model_set_id} = ${model_set.id} ;;
    relationship: many_to_one
  }

  join: permission_set {
    type: left_outer
    sql_on: ${role.permission_set_id} = ${permission_set.id} ;;
    relationship: many_to_one
  }
}

explore: role_user {
  join: role {
    type: left_outer
    sql_on: ${role_user.role_id} = ${role.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${role_user.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: model_set {
    type: left_outer
    sql_on: ${role.model_set_id} = ${model_set.id} ;;
    relationship: many_to_one
  }

  join: permission_set {
    type: left_outer
    sql_on: ${role.permission_set_id} = ${permission_set.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: saml_config {}

explore: saml_config_default_new_user_role {
  join: saml_config {
    type: left_outer
    sql_on: ${saml_config_default_new_user_role.saml_config_id} = ${saml_config.id} ;;
    relationship: many_to_one
  }

  join: role {
    type: left_outer
    sql_on: ${saml_config_default_new_user_role.role_id} = ${role.id} ;;
    relationship: many_to_one
  }

  join: model_set {
    type: left_outer
    sql_on: ${role.model_set_id} = ${model_set.id} ;;
    relationship: many_to_one
  }

  join: permission_set {
    type: left_outer
    sql_on: ${role.permission_set_id} = ${permission_set.id} ;;
    relationship: many_to_one
  }
}

explore: saml_group {
  join: saml_config {
    type: left_outer
    sql_on: ${saml_group.saml_config_id} = ${saml_config.id} ;;
    relationship: many_to_one
  }

  join: group {
    type: left_outer
    sql_on: ${saml_group.group_id} = ${group.id} ;;
    relationship: many_to_one
  }
}

explore: saml_group_role {
  join: saml_group {
    type: left_outer
    sql_on: ${saml_group_role.saml_group_id} = ${saml_group.id} ;;
    relationship: many_to_one
  }

  join: role {
    type: left_outer
    sql_on: ${saml_group_role.role_id} = ${role.id} ;;
    relationship: many_to_one
  }

  join: saml_config {
    type: left_outer
    sql_on: ${saml_group.saml_config_id} = ${saml_config.id} ;;
    relationship: many_to_one
  }

  join: group {
    type: left_outer
    sql_on: ${saml_group.group_id} = ${group.id} ;;
    relationship: many_to_one
  }

  join: model_set {
    type: left_outer
    sql_on: ${role.model_set_id} = ${model_set.id} ;;
    relationship: many_to_one
  }

  join: permission_set {
    type: left_outer
    sql_on: ${role.permission_set_id} = ${permission_set.id} ;;
    relationship: many_to_one
  }
}

explore: scheduled_job {
  join: look {
    type: left_outer
    sql_on: ${scheduled_job.look_id} = ${look.id} ;;
    relationship: many_to_one
  }

  join: dashboard {
    type: left_outer
    sql_on: ${scheduled_job.dashboard_id} = ${dashboard.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${scheduled_job.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: scheduled_plan {
    type: left_outer
    sql_on: ${scheduled_job.scheduled_plan_id} = ${scheduled_plan.id} ;;
    relationship: many_to_one
  }

  join: query {
    type: left_outer
    sql_on: ${look.query_id} = ${query.id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${look.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${look.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: scheduled_job_destination {
  join: scheduled_plan_destination {
    type: left_outer
    sql_on: ${scheduled_job_destination.scheduled_plan_destination_id} = ${scheduled_plan_destination.id} ;;
    relationship: many_to_one
  }

  join: scheduled_job {
    type: left_outer
    sql_on: ${scheduled_job_destination.scheduled_job_id} = ${scheduled_job.id} ;;
    relationship: many_to_one
  }

  join: scheduled_plan {
    type: left_outer
    sql_on: ${scheduled_plan_destination.scheduled_plan_id} = ${scheduled_plan.id} ;;
    relationship: many_to_one
  }

  join: dashboard {
    type: left_outer
    sql_on: ${scheduled_plan.dashboard_id} = ${dashboard.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${scheduled_plan.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: look {
    type: left_outer
    sql_on: ${scheduled_plan.look_id} = ${look.id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${dashboard.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${dashboard.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }

  join: query {
    type: left_outer
    sql_on: ${look.query_id} = ${query.id} ;;
    relationship: many_to_one
  }
}

explore: scheduled_job_stage {
  join: scheduled_job {
    type: left_outer
    sql_on: ${scheduled_job_stage.scheduled_job_id} = ${scheduled_job.id} ;;
    relationship: many_to_one
  }

  join: node {
    type: left_outer
    sql_on: ${scheduled_job_stage.node_id} = ${node.id} ;;
    relationship: many_to_one
  }

  join: look {
    type: left_outer
    sql_on: ${scheduled_job.look_id} = ${look.id} ;;
    relationship: many_to_one
  }

  join: dashboard {
    type: left_outer
    sql_on: ${scheduled_job.dashboard_id} = ${dashboard.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${scheduled_job.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: scheduled_plan {
    type: left_outer
    sql_on: ${scheduled_job.scheduled_plan_id} = ${scheduled_plan.id} ;;
    relationship: many_to_one
  }

  join: query {
    type: left_outer
    sql_on: ${look.query_id} = ${query.id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${look.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${look.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: scheduled_look {
  join: look {
    type: left_outer
    sql_on: ${scheduled_look.look_id} = ${look.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${scheduled_look.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: query {
    type: left_outer
    sql_on: ${look.query_id} = ${query.id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${look.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${look.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: scheduled_look_action {
  join: user {
    type: left_outer
    sql_on: ${scheduled_look_action.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: scheduled_look {
    type: left_outer
    sql_on: ${scheduled_look_action.scheduled_look_id} = ${scheduled_look.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }

  join: look {
    type: left_outer
    sql_on: ${scheduled_look.look_id} = ${look.id} ;;
    relationship: many_to_one
  }

  join: query {
    type: left_outer
    sql_on: ${look.query_id} = ${query.id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${look.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${look.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }
}

explore: scheduled_plan {
  join: dashboard {
    type: left_outer
    sql_on: ${scheduled_plan.dashboard_id} = ${dashboard.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${scheduled_plan.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: look {
    type: left_outer
    sql_on: ${scheduled_plan.look_id} = ${look.id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${dashboard.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${dashboard.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }

  join: query {
    type: left_outer
    sql_on: ${look.query_id} = ${query.id} ;;
    relationship: many_to_one
  }
}

explore: scheduled_plan_destination {
  join: scheduled_plan {
    type: left_outer
    sql_on: ${scheduled_plan_destination.scheduled_plan_id} = ${scheduled_plan.id} ;;
    relationship: many_to_one
  }

  join: dashboard {
    type: left_outer
    sql_on: ${scheduled_plan.dashboard_id} = ${dashboard.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${scheduled_plan.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: look {
    type: left_outer
    sql_on: ${scheduled_plan.look_id} = ${look.id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${dashboard.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${dashboard.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }

  join: query {
    type: left_outer
    sql_on: ${look.query_id} = ${query.id} ;;
    relationship: many_to_one
  }
}

explore: scheduled_task {
  join: user {
    type: left_outer
    sql_on: ${scheduled_task.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: scheduled_task_action_email {
  join: scheduled_task {
    type: left_outer
    sql_on: ${scheduled_task_action_email.scheduled_task_id} = ${scheduled_task.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${scheduled_task_action_email.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: scheduled_task_dashboard {
  join: dashboard {
    type: left_outer
    sql_on: ${scheduled_task_dashboard.dashboard_id} = ${dashboard.id} ;;
    relationship: many_to_one
  }

  join: scheduled_task {
    type: left_outer
    sql_on: ${scheduled_task_dashboard.scheduled_task_id} = ${scheduled_task.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dashboard.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${dashboard.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${dashboard.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: scheduled_task_look {
  join: look {
    type: left_outer
    sql_on: ${scheduled_task_look.look_id} = ${look.id} ;;
    relationship: many_to_one
  }

  join: scheduled_task {
    type: left_outer
    sql_on: ${scheduled_task_look.scheduled_task_id} = ${scheduled_task.id} ;;
    relationship: many_to_one
  }

  join: query {
    type: left_outer
    sql_on: ${look.query_id} = ${query.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${look.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${look.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${look.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: schema_migrations {}

explore: session {
  join: user {
    type: left_outer
    sql_on: ${session.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: access_token {
    type: left_outer
    sql_on: ${session.access_token_id} = ${access_token.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }

  join: credentials_api3 {
    type: left_outer
    sql_on: ${access_token.credentials_api3_id} = ${credentials_api3.id} ;;
    relationship: many_to_one
  }

  join: session {
    type: left_outer
    sql_on: ${access_token.session_id} = ${session.id} ;;
    relationship: many_to_one
  }

  join: role {
    type: left_outer
    sql_on: ${access_token.role_id} = ${role.id} ;;
    relationship: many_to_one
  }

  join: model_set {
    type: left_outer
    sql_on: ${role.model_set_id} = ${model_set.id} ;;
    relationship: many_to_one
  }

  join: permission_set {
    type: left_outer
    sql_on: ${role.permission_set_id} = ${permission_set.id} ;;
    relationship: many_to_one
  }
}

explore: setting {}

explore: slug {
  join: query {
    type: left_outer
    sql_on: ${slug.query_id} = ${query.id} ;;
    relationship: many_to_one
  }
}

explore: space {
  join: content_metadata {
    type: left_outer
    sql_on: ${space.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }
}

explore: space_user {
  join: user {
    type: left_outer
    sql_on: ${space_user.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${space_user.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${space.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }
}

explore: sql_query {
  join: user {
    type: left_outer
    sql_on: ${sql_query.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: sql_text {}

explore: thumbnail_image {
  join: dashboard {
    type: left_outer
    sql_on: ${thumbnail_image.dashboard_id} = ${dashboard.id} ;;
    relationship: many_to_one
  }

  join: look {
    type: left_outer
    sql_on: ${thumbnail_image.look_id} = ${look.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dashboard.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: content_metadata {
    type: left_outer
    sql_on: ${dashboard.content_metadata_id} = ${content_metadata.id} ;;
    relationship: many_to_one
  }

  join: space {
    type: left_outer
    sql_on: ${dashboard.space_id} = ${space.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }

  join: query {
    type: left_outer
    sql_on: ${look.query_id} = ${query.id} ;;
    relationship: many_to_one
  }
}

explore: upload_table {
  join: db_connection {
    type: left_outer
    sql_on: ${upload_table.db_connection_id} = ${db_connection.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${upload_table.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: user {
  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: user_access_filter {
  join: user {
    type: left_outer
    sql_on: ${user_access_filter.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: user_attribute {
  join: user {
    type: left_outer
    sql_on: ${user_attribute.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: user_attribute_group_value {
  join: user_attribute {
    type: left_outer
    sql_on: ${user_attribute_group_value.user_attribute_id} = ${user_attribute.id} ;;
    relationship: many_to_one
  }

  join: group {
    type: left_outer
    sql_on: ${user_attribute_group_value.group_id} = ${group.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${user_attribute.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: user_attribute_user_value {
  join: user_attribute {
    type: left_outer
    sql_on: ${user_attribute_user_value.user_attribute_id} = ${user_attribute.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${user_attribute_user_value.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: user_attribute_v2 {}

explore: user_direct_role {
  join: role {
    type: left_outer
    sql_on: ${user_direct_role.role_id} = ${role.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${user_direct_role.user_id} = ${user.dev_mode_user_id} ;;
    relationship: many_to_one
  }

  join: model_set {
    type: left_outer
    sql_on: ${role.model_set_id} = ${model_set.id} ;;
    relationship: many_to_one
  }

  join: permission_set {
    type: left_outer
    sql_on: ${role.permission_set_id} = ${permission_set.id} ;;
    relationship: many_to_one
  }

  join: version_set {
    type: left_outer
    sql_on: ${user.version_set_id} = ${version_set.id} ;;
    relationship: many_to_one
  }
}

explore: version_set {}

explore: whitelabel_configuration {}
