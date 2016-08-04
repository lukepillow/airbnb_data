
- view: everbooked_occupancy
  derived_table:
    sql: |
      select * from everbooked_pillow_occupancy

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: airbnb_listing_id
    primary_key: true
    type: string
    sql: ${TABLE}.airbnb_listing_id

  - dimension: past_year
    type: number
    sql: ${TABLE}.past_year

  - dimension: past_year_available
    type: number
    sql: ${TABLE}.past_year_available

  - dimension: past_year_unavailable
    type: number
    sql: ${TABLE}.past_year_unavailable

  - dimension: past_year_booked
    type: number
    sql: ${TABLE}.past_year_booked

  - dimension: "past_90days"
    type: number
    sql: ${TABLE}.past_90days

  - dimension: "past_90days_available"
    type: number
    sql: ${TABLE}.past_90days_available

  - dimension: "past_90days_unavailable"
    type: number
    sql: ${TABLE}.past_90days_unavailable

  - dimension: "past_90days_booked"
    type: number
    sql: ${TABLE}.past_90days_booked

  - dimension: "past_30days"
    type: number
    sql: ${TABLE}.past_30days

  - dimension: "past_30days_available"
    type: number
    sql: ${TABLE}.past_30days_available

  - dimension: "past_30days_unavailable"
    type: number
    sql: ${TABLE}.past_30days_unavailable

  - dimension: "past_30days_booked"
    type: number
    sql: ${TABLE}.past_30days_booked

  - dimension: "future_30days"
    type: number
    sql: ${TABLE}.future_30days

  - dimension: "future_30days_available"
    type: number
    sql: ${TABLE}.future_30days_available

  - dimension: "future_30days_unavailable"
    type: number
    sql: ${TABLE}.future_30days_unavailable

  - dimension: "future_30days_booked"
    type: number
    sql: ${TABLE}.future_30days_booked

  - dimension: "future_90days"
    type: number
    sql: ${TABLE}.future_90days

  - dimension: "future_90days_available"
    type: number
    sql: ${TABLE}.future_90days_available

  - dimension: "future_90days_unavailable"
    type: number
    sql: ${TABLE}.future_90days_unavailable

  - dimension: "future_90days_booked"
    type: number
    sql: ${TABLE}.future_90days_booked

  - dimension_group: created_at
    type: time
    sql: ${TABLE}.created_at

  - dimension: region_definition
    type: string
    sql: ${TABLE}.region_definition

  sets:
    detail:
      - airbnb_listing_id
      - past_year
      - past_year_available
      - past_year_unavailable
      - past_year_booked
      - past_90days
      - past_90days_available
      - past_90days_unavailable
      - past_90days_booked
      - past_30days
      - past_30days_available
      - past_30days_unavailable
      - past_30days_booked
      - future_30days
      - future_30days_available
      - future_30days_unavailable
      - future_30days_booked
      - future_90days
      - future_90days_available
      - future_90days_unavailable
      - future_90days_booked
      - created_at_time
      - region_definition

