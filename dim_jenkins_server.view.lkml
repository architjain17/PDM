view: dim_jenkins_server {
  sql_table_name: pdm_deliver.dim_jenkins_server ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: server {
    type: string
    sql: ${TABLE}.server ;;
  }

  dimension: customer_stack {
    type: string
    sql: ${TABLE}.customer_stack ;;
  }

  dimension: environment {
    type: string
    sql: ${TABLE}.environment ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
