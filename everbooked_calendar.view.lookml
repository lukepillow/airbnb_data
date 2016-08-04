
- view: everbooked_calendar
  derived_table:
    sql: |
      select * from everbooked_pillow_calendar

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: airbnb_listing_id
    type: string
    sql: ${TABLE}.airbnb_listing_id

  - dimension: booking_date
    type: date
    sql: ${TABLE}.booking_date

  - dimension: status
    type: string
    sql: ${TABLE}.status

  - dimension: price
    type: number
    sql: ${TABLE}.price
    
  - measure: pricea
    label: "Price (Avg)"
    type: avg
    sql: ${price}

  - dimension_group: created_at
    type: time
    sql: ${TABLE}.created_at

  - dimension: region_definition
    type: string
    sql: ${TABLE}.region_definition

  sets:
    detail:
      - airbnb_listing_id
      - booking_date
      - status
      - price
      - created_at_time
      - region_definition

