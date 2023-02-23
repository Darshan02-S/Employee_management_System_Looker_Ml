view: project_table {
  sql_table_name: `demos.project_table`
    ;;

  dimension: duration {
    type: number
    sql: ${TABLE}.Duration ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: prj_id {
    type: number
    sql: ${TABLE}.Prj_Id ;;
  }

  dimension: project_estimation {
    type: number
    sql: ${TABLE}.Project_Estimation ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }

  measure: count {
    type: count
    drill_fields: [project_name]
  }
}
