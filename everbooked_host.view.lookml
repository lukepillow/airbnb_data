
- view: everbooked_host
  derived_table:
    sql: |
      select * from everbooked_pillow_host

  fields:
  - measure: count
    label: "Count"
    type: count
    drill_fields: detail*

  - dimension: host_id
    primary_key: true
    type: string
    sql: ${TABLE}.host_id

  - dimension: name
    label: "Name"
    type: string
    sql: ${TABLE}.name

  - dimension: review_count
    label: "Review Count"
    type: number
    sql: ${TABLE}.review_count
    
  - measure: review_counta
    label: "Review Count (Avg)"
    type: avg
    sql: ${review_count}
    value_format_name: decimal_2
    
  - measure: review_counts
    label: "Review Count (Sum)"
    type: sum
    sql: ${review_count}

  - dimension: superhost
    label: "IsSuperhost"
    type: yesno
    sql: ${TABLE}.superhost is true

  - measure: superhosta
    type: number
    label: "Superhost %"
    sql: sum(case when ${TABLE}.superhost is true then 1 else 0 end) / count(${TABLE}.host_id)
    
  - measure: superhosts
    type: sum
    label: "Superhost (Total)"
    sql: case when ${TABLE}.superhost is true then 1 else 0 end

  - dimension: member_since
    label: "Member Since"
    type: date
    sql: ${TABLE}.member_since
    
  - measure: member_sincea
    label: "Membership Duration"
    type: avg
    sql: DATE_PART('day', now() - ${TABLE}.member_since)
    value_format_name: decimal_2

  - dimension: location
    label: "Host Location"
    type: string
    sql: ${TABLE}.location

  - dimension_group: created_at
    hidden: true
    type: time
    sql: ${TABLE}.created_at

  - dimension: region_definition
    label: "Region (Dataset def. - not host location)"
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

