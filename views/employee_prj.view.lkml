view: employee_prj {
  sql_table_name: `demos.employee_prj`
    ;;

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.Duration ;;
  }

  dimension: education_level {
    type: string
    sql: ${TABLE}.education_level ;;
  }

  dimension: emp_id {
    type: number
    sql: ${TABLE}.Emp_Id ;;
  }

  dimension: experience {
    type: number
    sql: ${TABLE}.Experience ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
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

  dimension: salary {
    type: number
    sql: ${TABLE}.Salary ;;
  }

  dimension_group: start {
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
    datatype: date
    sql: ${TABLE}.Start_Date ;;
  }

  measure: count {
    type: count
    drill_fields: [project_name, name]
  }
}
