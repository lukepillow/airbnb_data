view: airbnb_sandbox {
  sql_table_name: public.airbnb_sandbox ;;

  dimension: airbnb_id {
    type: number
    sql: ${TABLE}.airbnb_id ;;
  }

  dimension: bedroom_count {
    type: number
    sql: ${TABLE}.bedroom_count ;;
  }

  dimension: calendar {
    type: string
    sql: ${TABLE}.calendar ;;
  }

  dimension: zipcode {
    type: string
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
