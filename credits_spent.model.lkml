connection: "snowflake_usage"
include: "/views/overall_credits_spent.view"

named_value_format: gbp_format {
  value_format: "\"£\"#,##0.00"
}

named_value_format: gbp_format_dp {
  value_format: "\"£\"#,##0"
}


datagroup: system_credits_datagroup {

  sql_trigger: select count(*) from cc.overall_credits_spent ;;
  max_cache_age: "24 hours"
}

persist_with: system_credits_datagroup

explore: overall_credits_spent {
  view_label: "System Cost"

}
