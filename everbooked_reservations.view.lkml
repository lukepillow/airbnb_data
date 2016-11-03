view: everbooked_reservations {
  derived_table: {
    sql: select * from everbooked_pillow_reservations
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: airbnb_listing_id {
    type: string
    sql: ${TABLE}.airbnb_listing_id ;;
  }

  dimension: reservation_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.reservation_id ;;
  }

  dimension: checkin_date {
    type: date
    sql: ${TABLE}.checkin_date ;;
  }

  dimension_group: checkout_date {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.checkout_date ;;
  }

  dimension: price {
    label: "Reservation Price"
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: pricepernight {
    label: "Price/Night"
    type: number
    sql: ${TABLE}.price/${TABLE}.length ;;
  }

  dimension: Airbnb_URL {
    type: string
    sql: CONCAT('https://www.airbnb.com/rooms/', ${airbnb_listing_id}) ;;
  }

  measure: pricepernighta {
    label: "Price/Night (Avg)"
    type: number
    sql: sum(${TABLE}.price)/sum(${TABLE}.length) ;;
    value_format_name: usd_0
  }

  measure: pricea {
    label: "Reservation Price (Avg)"
    type: average
    sql: ${price} ;;
    value_format_name: usd_0
  }

  measure: prices {
    label: "Reservation Price (Sum)"
    type: sum
    sql: ${price} ;;
    value_format_name: usd_0
  }

  dimension: date_booked {
    type: date
    sql: ${TABLE}.date_booked ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.length ;;
  }

  measure: lengtha {
    type: average
    label: "Reservation Length (Avg)"
    sql: ${length} ;;
    value_format_name: decimal_2
  }

  measure: lengths {
    type: sum
    label: "Reservation Length (Sum)"
    sql: ${length} ;;
    value_format_name: decimal_2
  }

  set: detail {
    fields: [airbnb_listing_id, reservation_id, checkin_date, checkout_date_date, checkout_date_week, checkout_date_month, price, date_booked, length]
  }
}