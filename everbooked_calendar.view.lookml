
- view: everbooked_calendar
  derived_table:
    sql: |
      select * from everbooked_pillow_calendar

  fields:
  
  - dimension: compound_primary_key
    primary_key: true
    sql: CONCAT(${TABLE}.airbnb_listing_id, '  ', ${TABLE}.booking_date)
  
  - measure: count
    label: "Count"
    type: count
    drill_fields: detail*

  - dimension: airbnb_listing_id
    hidden: true
    type: string
    sql: ${TABLE}.airbnb_listing_id

  - dimension: booking_date
    label: "Booking Date"
    type: date
    sql: ${TABLE}.booking_date
    
  - dimension_group: booking_datet
    label: "Booking Date Group"
    type: time
    timeframes: [date, week, month]
    sql: ${booking_date}

  - dimension: status
    label: "Status"
    type: string
    sql: ${TABLE}.status

  - dimension: price
    label: "Price"
    type: number
    sql: ${TABLE}.price
    value_format_name: usd
    
  - measure: pricea
    label: "Price (Avg)"
    type: avg
    sql: ${price}
    value_format_name: usd
    
  - measure: prices
    label: "Price (Sum)"
    type: sum
    sql: ${price}
    value_format_name: usd
    
  - measure: pricemx
    label: "Price (Max)"
    type: max
    sql: ${price}
    value_format_name: usd
    
  - measure: pricemn
    label: "Price (Min)"
    type: min
    sql: ${price}
    value_format_name: usd
    
  - measure: pricesd
    label: "Price (SDev)"
    type: number
    sql: stddev(${price})
    value_format_name: usd

  - measure: booking_rate
    label: "Booking Rate"
    type: number
    sql: case when (sum(case when ${TABLE}.status= 'available' then 1 else 0 end + case when ${TABLE}.status= 'reservation' then 1 else 0 end)) > 0 then 1.00*sum(case when ${TABLE}.status= 'reservation' then 1 else 0 end)/(sum(case when ${TABLE}.status= 'available' then 1 else 0 end + case when ${TABLE}.status= 'reservation' then 1 else 0 end)) else null end
    value_format_name: percent_2

  - dimension_group: created_at
    hidden: true
    type: time
    sql: ${TABLE}.created_at

  - dimension: region_definition
    label: "Region"
    type: string
    sql: ${TABLE}.region_definition



