
- view: everbooked_amenities
  derived_table:
    sql: |
      select * from everbooked_pillow_amenities

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: airbnb_listing_id
    type: string
    sql: ${TABLE}.airbnb_listing_id

  - dimension: airbnb_amenities_type_id
    type: number
    sql: ${TABLE}.airbnb_amenities_type_id

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension_group: created_at
    type: time
    sql: ${TABLE}.created_at

  - dimension: region_definition
    type: string
    sql: ${TABLE}.region_definition

  sets:
    detail:
      - airbnb_listing_id
      - airbnb_amenities_type_id
      - name
      - created_at_time
      - region_definition

