view: dim_jenkins_job {
  sql_table_name: pdm_deliver.dim_jenkins_job ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.job_name ;;
  }

  dimension: server {
    type: string
    sql: ${TABLE}.server ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.customer ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.enabled ;;
  }

  dimension: buildflow_info {
    type: string
    sql: ${TABLE}.buildflow_info ;;
  }

  dimension: downstream_jobs {
    type: string
    sql: ${TABLE}.downstream_jobs ;;
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
    sql: ${TABLE}.start_date ;;
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
    sql: ${TABLE}.end_date ;;
  }

  dimension: is_last_mile {
    type: yesno
    sql: ${TABLE}.is_last_mile ;;
  }

  dimension: is_next_to_last_mile {
    type: yesno
    sql: ${TABLE}.is_next_to_last_mile ;;
  }

  dimension: plugins {
    type: string
    sql: ${TABLE}.plugins ;;
  }

  dimension: shell_cmd {
    type: string
    sql: ${TABLE}.shell_cmd ;;
  }

  dimension: trigger_schedule {
    type: string
    sql: ${TABLE}.trigger_schedule ;;
  }

  dimension: upstream_jobs {
    type: string
    sql: ${TABLE}.upstream_jobs ;;
  }

  measure: count {
    type: count
    drill_fields: [id, job_name]
  }
}
