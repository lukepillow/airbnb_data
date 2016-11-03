view: the_biggest_boi {
  sql_table_name: public.the_biggest_boi ;;

  dimension: airbnb_id {
    type: number
    sql: ${TABLE}.airbnb_id ;;
  }

  dimension: bedrooms {
    type: number
    sql: ${TABLE}.bedrooms ;;
  }

  dimension: calendar {
    type: string
    sql: ${TABLE}.calendar ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: listing {
    type: string
    sql: ${TABLE}.listing ;;
  }

  dimension: reviews {
    type: string
    sql: ${TABLE}.reviews ;;
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
