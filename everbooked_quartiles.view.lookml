
- view: everbooked_quartiles
  derived_table:
    sql: |
      select * from everbooked_pillow_quartiles

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: airbnb_listing_id
    primary_key: true
    type: string
    sql: ${TABLE}.airbnb_listing_id

  - dimension: pricing_quartile_for_zip
    type: number
    sql: ${TABLE}.pricing_quartile_for_zip

  - dimension: occupancy_quartile_for_zip
    type: number
    sql: ${TABLE}.occupancy_quartile_for_zip

  - dimension: days_on_market_quartile_for_zip
    type: number
    sql: ${TABLE}.days_on_market_quartile_for_zip

  - dimension: revpar_quartile_for_zip
    type: number
    sql: ${TABLE}.revpar_quartile_for_zip

  - dimension: pricing_quartile_for_city
    type: number
    sql: ${TABLE}.pricing_quartile_for_city

  - dimension: occupancy_quartile_for_city
    type: number
    sql: ${TABLE}.occupancy_quartile_for_city

  - dimension: days_on_market_quartile_for_city
    type: number
    sql: ${TABLE}.days_on_market_quartile_for_city

  - dimension: revpar_quartile_for_city
    type: number
    sql: ${TABLE}.revpar_quartile_for_city

  - dimension: pricing_quartile_for_market
    type: number
    sql: ${TABLE}.pricing_quartile_for_market

  - dimension: occupancy_quartile_for_market
    type: number
    sql: ${TABLE}.occupancy_quartile_for_market

  - dimension: days_on_market_quartile_for_market
    type: number
    sql: ${TABLE}.days_on_market_quartile_for_market

  - dimension: revpar_quartile_for_market
    type: number
    sql: ${TABLE}.revpar_quartile_for_market

  - dimension_group: created_at
    type: time
    sql: ${TABLE}.created_at

  - dimension: region_definition
    type: string
    sql: ${TABLE}.region_definition

  sets:
    detail:
      - airbnb_listing_id
      - pricing_quartile_for_zip
      - occupancy_quartile_for_zip
      - days_on_market_quartile_for_zip
      - revpar_quartile_for_zip
      - pricing_quartile_for_city
      - occupancy_quartile_for_city
      - days_on_market_quartile_for_city
      - revpar_quartile_for_city
      - pricing_quartile_for_market
      - occupancy_quartile_for_market
      - days_on_market_quartile_for_market
      - revpar_quartile_for_market
      - created_at_time
      - region_definition

