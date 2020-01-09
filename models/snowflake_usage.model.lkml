connection: "otd_snowflake_usage"

include: "/views/login_history.view"
include: "/views/resource_monitors.view"
include: "/views/storage_usage.view"
include: "/views/warehouse_metering_history.view"
datagroup: snowflake_usage_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: snowflake_usage_default_datagroup


explore: login_history {}
explore: resource_monitors {}
explore: storage_usage {}
explore: warehouse_metering_history  {}
