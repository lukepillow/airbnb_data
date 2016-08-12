
- view: everbooked_amenities
  derived_table:
    sql: |
      select * from everbooked_pillow_amenities

  fields:
  - measure: count
    label: "Count"
    type: count
    drill_fields: detail*

  - dimension: airbnb_listing_id
    hidden: true
    type: string
    sql: ${TABLE}.airbnb_listing_id

  - dimension: airbnb_amenities_type_id
    hidden: true
    type: number
    sql: ${TABLE}.airbnb_amenities_type_id

  - dimension: name
    label: "Amenity"
    type: string
    sql: ${TABLE}.name

  sets:
    detail:
      - airbnb_listing_id
      - airbnb_amenities_type_id
      - name
      - created_at_time
      - region_definition

