
- view: everbooked_quartiles
  derived_table:
    sql: |
      select * from everbooked_pillow_quartiles

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: airbnb_listing_id
    hidden: true
    primary_key: true
    type: string
    sql: ${TABLE}.airbnb_listing_id

  - dimension: pricing_quartile_for_zip
    label: "Pricing Quartile for Zip"
    type: number
    sql: ${TABLE}.pricing_quartile_for_zip

  - dimension: occupancy_quartile_for_zip
    label: "Occupancy Quartile for Zip"
    type: number
    sql: ${TABLE}.occupancy_quartile_for_zip

  - dimension: days_on_market_quartile_for_zip
    label: "Days on Market Quartile for Zip"
    type: number
    sql: ${TABLE}.days_on_market_quartile_for_zip

  - dimension: revpar_quartile_for_zip
    label: "Rev Par Quartile for Zip"
    type: number
    sql: ${TABLE}.revpar_quartile_for_zip

  - dimension: pricing_quartile_for_city
    label: "Pricing Quartile for City"
    type: number
    sql: ${TABLE}.pricing_quartile_for_city

  - dimension: occupancy_quartile_for_city
    label: "Occupancy Quartile for City"
    type: number
    sql: ${TABLE}.occupancy_quartile_for_city

  - dimension: days_on_market_quartile_for_city
    label: "Days on Market Quartile for City"
    type: number
    sql: ${TABLE}.days_on_market_quartile_for_city

  - dimension: revpar_quartile_for_city
    label: "Rev Par Quartile for City"
    type: number
    sql: ${TABLE}.revpar_quartile_for_city

  - dimension: pricing_quartile_for_market
    label: "Pricing Quartile for Market"
    type: number
    sql: ${TABLE}.pricing_quartile_for_market

  - dimension: occupancy_quartile_for_market
    label: "Occupancy Quartile for Market"
    type: number
    sql: ${TABLE}.occupancy_quartile_for_market

  - dimension: days_on_market_quartile_for_market
    label: "Days on Market Quartile for Market"
    type: number
    sql: ${TABLE}.days_on_market_quartile_for_market

  - dimension: revpar_quartile_for_market
    label: "Rev Par Quartile for Market"
    type: number
    sql: ${TABLE}.revpar_quartile_for_market



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


