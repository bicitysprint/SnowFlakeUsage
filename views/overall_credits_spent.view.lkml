view: overall_credits_spent {
  sql_table_name: CC.OVERALL_CREDITS_SPENT ;;

  dimension: cs_credits_used {
    type: number
    sql: ${TABLE}."CS_CREDITS_USED" ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}."MONTH" ;;
  }

  dimension: otd_credits_used {
    type: number
    sql: ${TABLE}."OTD_CREDITS_USED" ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}."YEAR" ;;
  }

  ####################################as per contract - it costs us 3.42 dollars per credit####################################
  dimension: cs_cost {
    type: number
    sql: ${cs_credits_used}*2.62 ;;
  }

  dimension: otd_cost {
    type: number
    sql: ${otd_credits_used}*2.62 ;;
  }

  measure: sum_cs_cost {
    type: sum
    sql: ${cs_cost} ;;
  }

  measure: sum_otd_cost {
    type: sum
    sql: ${otd_cost} ;;
  }
  ####################################as per contract - it costs us 3.42 dollars per credit####################################
  measure: count {
    type: count
    drill_fields: []
  }
}
