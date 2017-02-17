view: fact_sql_script_metrics {
  sql_table_name: pdm_deliver.fact_sql_script_metrics ;;

  dimension: server {
    type: number
    sql: ${TABLE}.server ;;
  }

  dimension: job {
    type: number
    sql: ${TABLE}.job ;;
  }

  dimension_group: running {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.running_date ;;
  }

  dimension: sql_script_name {
    type: string
    sql: ${TABLE}.sql_script_name ;;
  }

  measure: average_running_time {
    type:  average
    sql: ${TABLE}.running_time;;
  }

  measure: total_running_time {
    type:  sum
    sql: ${TABLE}.running_time;;
  }

  measure: count {
    type: count
    drill_fields: [sql_script_name]
  }
}
