
- view: everbooked_reservations
  derived_table:
    sql: |
      select * from everbooked_pillow_reservations

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: airbnb_listing_id
    type: string
    sql: ${TABLE}.airbnb_listing_id

  - dimension: reservation_id
    primary_key: true
    type: string
    sql: ${TABLE}.reservation_id

  - dimension: checkin_date
    type: date
    sql: ${TABLE}.checkin_date

  - dimension: checkout_date
    type: date
    sql: ${TABLE}.checkout_date

  - dimension: price
    type: number
    sql: ${TABLE}.price

  - dimension: date_booked
    type: date
    sql: ${TABLE}.date_booked

  - dimension: length
    type: number
    sql: ${TABLE}.length

  - dimension_group: created_at
    type: time
    sql: ${TABLE}.created_at

  - dimension: region_definition
    type: string
    sql: ${TABLE}.region_definition

  sets:
    detail:
      - airbnb_listing_id
      - reservation_id
      - checkin_date
      - checkout_date
      - price
      - date_booked
      - length
      - created_at_time
      - region_definition

