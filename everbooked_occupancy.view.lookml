
- view: everbooked_occupancy
  derived_table:
    sql: |
      select * from everbooked_pillow_occupancy

  fields:
  - measure: count
    hidden: true
    type: count
    drill_fields: detail*

  - dimension: airbnb_listing_id
    primary_key: true
    type: string
    sql: ${TABLE}.airbnb_listing_id

  - dimension: past_year
    label: "Past Year"
    type: number
    sql: ${TABLE}.past_year
    
  - measure: past_years
    label: "Past Year (Sum)"
    type: sum
    sql: ${past_year}

  - dimension: past_year_available
    label: "Past Year Available"
    type: number
    sql: ${TABLE}.past_year_available
    
  - measure: past_year_availables
    label: "Past Year Available (Sum)"
    type: sum
    sql: ${past_year_available}

  - dimension: past_year_unavailable
    label: "Past Year Unavailable"
    type: number
    sql: ${TABLE}.past_year_unavailable
    
  - measure: past_year_unavailables
    label: "Past Year Unavailable (Sum)"
    type: sum
    sql: ${past_year_unavailable}

  - dimension: past_year_booked
    label: "Past Year Booked"
    type: number
    sql: ${TABLE}.past_year_booked
    
  - measure: past_year_bookeds
    label: "Past Year Booked (Sum)"
    type: sum
    sql: ${past_year_booked}

  - dimension: "past_90days"
    label: "Past 90 Days"
    type: number
    sql: ${TABLE}.past_90days
    
  - measure: "past_90dayss"
    label: "Past 90 Days (Sum)"
    type: sum
    sql: ${past_90days}

  - dimension: "past_90days_available"
    label: "Past 90 Days Available"
    type: number
    sql: ${TABLE}.past_90days_available
    
  - measure: "past_90days_availables"
    label: "Past 90 Days Available (Sum)"
    type: sum
    sql: ${past_90days_available}

  - dimension: "past_90days_unavailable"
    label: "Past 90 Days Unavailable"
    type: number
    sql: ${TABLE}.past_90days_unavailable
    
  - measure: "past_90days_unavailables"
    label: "Past 90 Days Unavailable (Sum)"
    type: sum
    sql: ${past_90days_unavailable}

  - dimension: "past_90days_booked"
    label: "Past 90 Days Booked"
    type: number
    sql: ${TABLE}.past_90days_booked
  
  - measure: "past_90days_bookeds"
    label: "Past 90 Days Booked (Sum)"
    type: sum
    sql: ${past_90days_booked}

  - dimension: "past_30days"
    label: "Past 30 Days"
    type: number
    sql: ${TABLE}.past_30days
    
  - measure: "past_30dayss"
    label: "Past 30 Days (Sum)"
    type: sum
    sql: ${past_30days}

  - dimension: "past_30days_available"
    label: "Past 30 Days Available"
    type: number
    sql: ${TABLE}.past_30days_available

  - measure: "past_30daysavailables"
    label: "Past 30 Days Available (Sum)"
    type: sum
    sql: ${past_30days_available}

  - dimension: "past_30days_unavailable"
    label: "Past 30 Days Unavailable"
    type: number
    sql: ${TABLE}.past_30days_unavailable
    
  - measure: "past_30daysunavailables"
    label: "Past 30 Days Unavailable (Sum)"
    type: sum
    sql: ${past_30days_unavailable}

  - dimension: "past_30days_booked"
    label: "Past 30 Days Booked"
    type: number
    sql: ${TABLE}.past_30days_booked
    
  - measure: "past_30days_bookeds"
    label: "Past 30 Days Booked (Sum)"
    type: sum
    sql: ${past_30days_booked}

  - dimension: "future_30days"
    label: "Future 30 Days"
    type: number
    sql: ${TABLE}.future_30days
    
  - measure: "future_30dayss"
    label: "Future 30 Days (Sum)"
    type: sum
    sql: ${future_30days}

  - dimension: "future_30days_available"
    label: "Future 30 Days Available"
    type: number
    sql: ${TABLE}.future_30days_available
    
  - measure: "future_30days_availables"
    label: "Future 30 Days Available (Sum)"
    type: sum
    sql: ${future_30days_available}

  - dimension: "future_30days_unavailable"
    label: "Future 30 Days Unavailable"
    type: number
    sql: ${TABLE}.future_30days_unavailable
    
  - measure: "future_30days_unavailables"
    label: "Future 30 Days Unavailable (Sum)"
    type: sum
    sql: ${future_30days_unavailable}

  - dimension: "future_30days_booked"
    label: "Future 30 days Booked"
    type: number
    sql: ${TABLE}.future_30days_booked
    
  - measure: "future_30days_bookeds"
    label: "Future 30 days Booked (Sum)"
    type: sum
    sql: ${future_30days_booked}

  - dimension: "future_90days"
    label: "Future 90 Days"
    type: number
    sql: ${TABLE}.future_90days
    
  - measure: "future_90dayss"
    label: "Future 90 Days (Sum)"
    type: sum
    sql: ${future_90days}

  - dimension: "future_90days_available"
    label: "Future 90 Days Available"
    type: number
    sql: ${TABLE}.future_90days_available
    
  - measure: "future_90days_availables"
    label: "Future 90 Days Available (Sum)"
    type: sum
    sql: ${future_90days_available}

  - dimension: "future_90days_unavailable"
    label: "Future 90 Days Unavailable"
    type: number
    sql: ${TABLE}.future_90days_unavailable
    
  - measure: "future_90days_unavailables"
    label: "Future 90 Days Unavailable (Sum)"
    type: sum
    sql: ${future_90days_unavailable}

  - dimension: "future_90days_booked"
    label: "Future 90 Days Booked"
    type: number
    sql: ${TABLE}.future_90days_booked
    
  - measure: "future_90days_bookeds"
    label: "Future 90 Days Booked (Sum)"
    type: sum
    sql: ${future_90days_booked}

  - dimension_group: created_at
    hidden: true
    type: time
    sql: ${TABLE}.created_at

  - dimension: region_definition
    label: "Region"
    type: string
    sql: ${TABLE}.region_definition

  sets:
    detail:
      - airbnb_listing_id
      - past_year
      - past_year_available
      - past_year_unavailable
      - past_year_booked
      - past_90days
      - past_90days_available
      - past_90days_unavailable
      - past_90days_booked
      - past_30days
      - past_30days_available
      - past_30days_unavailable
      - past_30days_booked
      - future_30days
      - future_30days_available
      - future_30days_unavailable
      - future_30days_booked
      - future_90days
      - future_90days_available
      - future_90days_unavailable
      - future_90days_booked
      - created_at_time
      - region_definition

