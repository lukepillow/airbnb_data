- view: kwelia_zip_stats
  sql_table_name: public.kwelia_zip_stats
  fields:

  - dimension: one_bedroom_avg_price
    type: string
    sql: ${TABLE}.one_bedroom_avg_price

  - dimension: one_bedroom_avg_price_per_sqft
    type: string
    sql: ${TABLE}.one_bedroom_avg_price_per_sqft

  - dimension: one_bedroom_median_price
    type: string
    sql: ${TABLE}.one_bedroom_median_price

  - dimension: one_bedroom_median_price_per_sqft
    type: string
    sql: ${TABLE}.one_bedroom_median_price_per_sqft

  - dimension: zip
    type: string
    sql: ${TABLE}.zip

  - measure: count
    type: count
    drill_fields: []

