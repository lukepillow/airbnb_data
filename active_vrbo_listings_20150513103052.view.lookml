- view: active_vrbo_listings_20150513103052
  sql_table_name: public.active_vrbo_listings_20150513103052
  fields:

  - dimension: additional_info
    type: string
    sql: ${TABLE}.additional_info

  - dimension: amenities_detailed
    type: string
    sql: ${TABLE}.amenities_detailed

  - dimension: calendar
    type: string
    sql: ${TABLE}.calendar

  - dimension: detailed_rates
    type: string
    sql: ${TABLE}.detailed_rates

  - dimension: high_level_rate
    type: string
    sql: ${TABLE}.high_level_rate

  - dimension: latitude
    type: string
    sql: ${TABLE}.latitude

  - dimension: listing_title
    type: string
    sql: ${TABLE}.listing_title

  - dimension: longitude
    type: string
    sql: ${TABLE}.longitude

  - dimension: minimum_stay
    type: string
    sql: ${TABLE}.minimum_stay

  - dimension: phone
    type: string
    sql: ${TABLE}.phone

  - dimension: photos
    type: string
    sql: ${TABLE}.photos

  - dimension: property_description
    type: string
    sql: ${TABLE}.property_description

  - dimension: region
    type: string
    sql: ${TABLE}.region

  - dimension: review_avg_rating
    type: string
    sql: ${TABLE}.review_avg_rating

  - dimension: review_count
    type: string
    sql: ${TABLE}.review_count

  - dimension: room_id
    type: string
    sql: ${TABLE}.room_id

  - dimension: url
    type: string
    sql: ${TABLE}.url

  - dimension: vrbo_id
    type: string
    sql: ${TABLE}.vrbo_id

  - measure: count
    type: count
    drill_fields: []

