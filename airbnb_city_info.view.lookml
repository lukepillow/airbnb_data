- view: airbnb_city_info
  sql_table_name: public.airbnb_city_info
  fields:

  - dimension: avg_book_rate
    type: string
    sql: ${TABLE}.avg_book_rate

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: num_listings
    type: string
    sql: ${TABLE}.num_listings

  - measure: count
    type: count
    drill_fields: []

