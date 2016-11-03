view: picture_stats {
  sql_table_name: public.picture_stats ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: brightness {
    type: string
    sql: ${TABLE}.brightness ;;
  }

  dimension: pic_std {
    type: string
    sql: ${TABLE}.pic_std ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
