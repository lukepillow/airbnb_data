view: confidence {
  sql_table_name: public.confidence ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: city_num_listings {
    type: string
    sql: ${TABLE}.city_num_listings ;;
  }

  dimension: city_rmse {
    type: string
    sql: ${TABLE}.city_rmse ;;
  }

  dimension: zip_num_listings {
    type: string
    sql: ${TABLE}.zip_num_listings ;;
  }

  dimension: zipcode {
    type: string
    sql: ${TABLE}.zipcode ;;
  }

  dimension: zipcode_rmse {
    type: string
    sql: ${TABLE}.zipcode_rmse ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
