- view: census_data
  sql_table_name: public.census_data
  fields:

  - dimension: avg_household_size
    type: string
    sql: ${TABLE}.avg_household_size

  - dimension: density
    type: string
    sql: ${TABLE}.density

  - dimension: housing_units
    type: string
    sql: ${TABLE}.housing_units

  - dimension: mean_commute_time
    type: string
    sql: ${TABLE}.mean_commute_time

  - dimension: median_age
    type: string
    sql: ${TABLE}.median_age

  - dimension: median_income
    type: string
    sql: ${TABLE}.median_income

  - dimension: owner_occupied_housing
    type: string
    sql: ${TABLE}.owner_occupied_housing

  - dimension: percent_unemployed
    type: string
    sql: ${TABLE}.percent_unemployed

  - dimension: population
    type: string
    sql: ${TABLE}.population

  - dimension: private_wage_employed
    type: string
    sql: ${TABLE}.private_wage_employed

  - dimension: renter_occupied
    type: string
    sql: ${TABLE}.renter_occupied

  - dimension: total_employed
    type: string
    sql: ${TABLE}.total_employed

  - dimension: total_housing_units
    type: string
    sql: ${TABLE}.total_housing_units

  - dimension: workers
    type: string
    sql: ${TABLE}.workers

  - dimension: workers_taking_public_transit
    type: string
    sql: ${TABLE}.workers_taking_public_transit

  - dimension: workers_walking
    type: string
    sql: ${TABLE}.workers_walking

  - dimension: zipcode
    type: string
    sql: ${TABLE}.zipcode

  - measure: count
    type: count
    drill_fields: []

