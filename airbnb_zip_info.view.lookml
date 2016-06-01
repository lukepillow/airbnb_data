- view: airbnb_zip_info
  sql_table_name: public.airbnb_zip_info
  fields:

  - dimension: avg_book_rate
    type: string
    sql: ${TABLE}.avg_book_rate

  - dimension: num_listings
    type: string
    sql: ${TABLE}.num_listings

  - dimension: zipcode
    type: string
    sql: ${TABLE}.zipcode

  - measure: count
    type: count
    drill_fields: []

