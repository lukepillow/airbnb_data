view: model_coefficients {
  sql_table_name: public.model_coefficients ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: coef {
    type: string
    sql: ${TABLE}.coef ;;
  }

  dimension: default_value {
    type: string
    sql: ${TABLE}.default_value ;;
  }

  dimension: feature {
    type: string
    sql: ${TABLE}.feature ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
