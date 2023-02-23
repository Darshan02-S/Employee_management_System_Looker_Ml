view: employee_table {
  sql_table_name: `demos.employee_table`
    ;;

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
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

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: prj_id {
    type: number
    sql: ${TABLE}.Prj_Id ;;
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
    drill_fields: [name]
  }
}
