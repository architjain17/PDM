view: dim_actor {
  sql_table_name: pdm_deliver.dim_actor ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: aws_username {
    type: string
    sql: ${TABLE}.aws_username ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.email_address ;;
  }

  dimension: git_username {
    type: string
    sql: ${TABLE}.git_username ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_person {
    type: yesno
    sql: ${TABLE}.is_person ;;
  }

  dimension: jenkins_username {
    type: string
    sql: ${TABLE}.jenkins_username ;;
  }

  dimension: jira_username {
    type: string
    sql: ${TABLE}.jira_username ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      git_username,
      aws_username,
      jira_username,
      jenkins_username,
      name
    ]
  }
}
