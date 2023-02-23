view: profit_table {
  sql_table_name: `demos.Profit_table`
    ;;

  dimension: duration {
    type: number
    sql: ${TABLE}.Duration ;;
  }

  dimension: prj_id {
    type: number
    sql: ${TABLE}.Prj_Id ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}.Profit ;;
  }

  dimension: project_estimation {
    type: number
    sql: ${TABLE}.Project_Estimation ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }

  dimension: total_investment {
    type: number
    sql: ${TABLE}.Total_Investment ;;
  }

  measure: count {
    type: count
    drill_fields: [project_name]
  }
}
