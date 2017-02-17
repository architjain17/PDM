view: dim_jenkins_build_success {
  sql_table_name: pdm_deliver.dim_jenkins_build_success ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: is_success {
    type: yesno
    sql: ${TABLE}.is_success ;;
  }

  dimension: result {
    type: string
    sql: ${TABLE}.result ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
