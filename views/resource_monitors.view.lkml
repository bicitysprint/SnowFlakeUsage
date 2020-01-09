view: resource_monitors {
  sql_table_name: READER_ACCOUNT_USAGE.RESOURCE_MONITORS ;;

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
    sql: ${TABLE}."CREATED" ;;
  }

  dimension: credit_quota {
    type: string
    sql: ${TABLE}."CREDIT_QUOTA" ;;
  }

  dimension: level {
    type: string
    sql: ${TABLE}."LEVEL" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: notify {
    type: number
    sql: ${TABLE}."NOTIFY" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: reader_account_name {
    type: string
    sql: ${TABLE}."READER_ACCOUNT_NAME" ;;
  }

  dimension: remaining_credits {
    type: number
    sql: ${TABLE}."REMAINING_CREDITS" ;;
  }

  dimension: suspend {
    type: number
    sql: ${TABLE}."SUSPEND" ;;
  }

  dimension: suspend_immediate {
    type: number
    sql: ${TABLE}."SUSPEND_IMMEDIATE" ;;
  }

  dimension: used_credits {
    type: string
    sql: ${TABLE}."USED_CREDITS" ;;
  }

  dimension: warehouses {
    type: string
    sql: ${TABLE}."WAREHOUSES" ;;
  }

  measure: count {
    type: count
    drill_fields: [reader_account_name, name]
  }
}
