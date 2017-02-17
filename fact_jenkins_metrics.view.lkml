view: fact_jenkins_metrics {
  sql_table_name: pdm_deliver.fact_jenkins_metrics ;;

  dimension: build_number {
    type: number
    sql: ${TABLE}.build_number ;;
  }

  dimension: duration_in_sec {
    type: number
    sql: ${TABLE}.duration_in_sec ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_time ;;
  }

  dimension: job {
    type: number
    sql: ${TABLE}.job ;;
  }

  dimension: result {
    type: number
    sql: ${TABLE}.result ;;
  }

  dimension: server {
    type: number
    sql: ${TABLE}.server ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_time ;;
  }

  dimension: started_by {
    type: number
    sql: ${TABLE}.started_by ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
