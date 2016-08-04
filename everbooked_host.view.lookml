
- view: everbooked_host
  derived_table:
    sql: |
      select * from everbooked_pillow_host

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: host_id
    primary_key: true
    type: string
    sql: ${TABLE}.host_id

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: review_count
    type: number
    sql: ${TABLE}.review_count

  - dimension: superhost
    type: string
    sql: ${TABLE}.superhost

  - dimension: member_since
    type: date
    sql: ${TABLE}.member_since

  - dimension: location
    type: string
    sql: ${TABLE}.location

  - dimension_group: created_at
    type: time
    sql: ${TABLE}.created_at

  - dimension: region_definition
    type: string
    sql: ${TABLE}.region_definition

  sets:
    detail:
      - host_id
      - name
      - review_count
      - superhost
      - member_since
      - location
      - created_at_time
      - region_definition

