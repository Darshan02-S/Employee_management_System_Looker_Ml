connection: "employee_management_system"

# include all the views
include: "/views/**/*.view"

datagroup: employee_management_system_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: employee_management_system_default_datagroup

explore: employee_table_total_investment {}

explore: total_profit_table {}

explore: employee_project_combined {}

explore: employee_table {
  join: project_table {
        type: left_outer
        relationship: one_to_one
        sql_on: ${employee_table.prj_id} = ${project_table.prj_id};;
  }
}

explore: profit_table {}

explore: project_table {}

explore: employee_prj {}

explore: total_investment {}
