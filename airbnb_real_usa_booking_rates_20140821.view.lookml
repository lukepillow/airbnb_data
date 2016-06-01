- view: airbnb_real_usa_booking_rates_20140821
  sql_table_name: public.airbnb_real_usa_booking_rates_20140821
  fields:

  - dimension: airbnb_id
    type: string
    sql: ${TABLE}.airbnb_id

  - dimension: bedrooms
    type: string
    sql: ${TABLE}.bedrooms

  - dimension: calendar
    type: string
    sql: ${TABLE}.calendar

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension: listing
    type: string
    sql: ${TABLE}.listing

  - dimension: reviews
    type: string
    sql: ${TABLE}.reviews

  - dimension: zipcode
    type: string
    sql: ${TABLE}.zipcode

  - measure: count
    type: count
    drill_fields: []

