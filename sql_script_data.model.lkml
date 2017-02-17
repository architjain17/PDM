connection: "pdm"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: fact_sql_script_metrics {
  view_name: fact_sql_script_metrics
  from: fact_sql_script_metrics
  join: dim_jenkins_job {
    type: inner
    sql_on: ${fact_sql_script_metrics.job} = ${dim_jenkins_job.id} ;;
    relationship: many_to_one
  }
  join: dim_jenkins_server {
    type: inner
    sql_on: ${fact_sql_script_metrics.server} = ${dim_jenkins_server.id} ;;
    relationship: many_to_one
  }
}
