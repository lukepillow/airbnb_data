view: everbooked_airbnb {
  derived_table: {
    sql: select * from everbooked_pillow_airbnb
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: listing_id {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.listing_id ;;
  }

  dimension: host_id {
    hidden: yes
    type: string
    sql: ${TABLE}.host_id ;;
  }

  dimension: name {
    label: "Long Description"
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: rental_type {
    label: "Rental Type"
    type: string
    sql: ${TABLE}.rental_type ;;
  }

  dimension: property_type {
    label: "Property Type"
    type: string
    sql: ${TABLE}.property_type ;;
  }

  dimension: rating {
    label: "Current Rating"
    type: number
    sql: ${TABLE}.rating ;;
  }

  measure: ratinga {
    label: "Current Rating (Avg)"
    type: average
    sql: ${rating} ;;
  }

  dimension: photo_count {
    label: "Photo Count"
    type: number
    sql: ${TABLE}.photo_count ;;
  }

  measure: photo_counta {
    label: "Photo Count (Avg)"
    type: average
    sql: ${photo_count} ;;
  }

  dimension: bedrooms {
    label: "Bedrooms"
    type: number
    sql: ${TABLE}.bedrooms ;;
  }

  measure: bedroomsa {
    label: "Bedrooms (Avg)"
    type: average
    sql: ${bedrooms} ;;
  }

  measure: bedroomss {
    label: "Bedrooms (Sum)"
    type: sum
    sql: ${bedrooms} ;;
  }

  dimension: bathrooms {
    label: "Bathrooms"
    type: number
    sql: ${TABLE}.bathrooms ;;
  }

  measure: bathroomsa {
    label: "Bathrooms (Avg)"
    type: average
    sql: ${bathrooms} ;;
  }

  measure: bathroomss {
    label: "Bathrooms (Sum)"
    type: sum
    sql: ${bathrooms} ;;
  }

  dimension: accomdates {
    label: "Accomodates"
    type: number
    sql: ${TABLE}.accomdates ;;
  }

  measure: accomdatesa {
    label: "Accomodates (Avg)"
    type: average
    sql: ${accomdates} ;;
  }

  measure: accomdatess {
    label: "Accomodates (Sum)"
    type: sum
    sql: ${accomdates} ;;
  }

  dimension: base_price {
    label: "Base Price"
    type: number
    sql: ${TABLE}.base_price ;;
  }

  measure: base_pricea {
    label: "Base Price (Avg)"
    type: average
    sql: ${base_price} ;;
  }

  dimension: cleaning_fee {
    label: "Cleaning Fee"
    type: number
    sql: ${TABLE}.cleaning_fee ;;
  }

  measure: cleaning_feea {
    label: "Cleaning Fee (Avg)"
    type: average
    sql: ${cleaning_fee} ;;
  }

  dimension: extra_people {
    type: string
    sql: ${TABLE}.extra_people ;;
  }

  dimension: min_stay {
    type: string
    sql: ${TABLE}.min_stay ;;
  }

  dimension: latitiude {
    type: number
    sql: ${TABLE}.latitiude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: geolocation {
    label: "Geolocation"
    type: location
    sql_latitude: ${TABLE}.latitiude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  dimension: geolocation3 {
    label: "GeolocationR3"
    type: location
    sql_latitude: round(${TABLE}.latitiude::numeric,3) ;;
    sql_longitude: round(${TABLE}.longitude::numeric,3) ;;
  }

  dimension: geolocation2 {
    label: "GeolocationR2"
    type: location
    sql_latitude: round(${TABLE}.latitiude::numeric,2) ;;
    sql_longitude: round(${TABLE}.longitude::numeric,2) ;;
  }

  dimension: location {
    label: "Location (City, ST)"
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: zip_code {
    label: "Zip Code"
    type: string
    sql: ${TABLE}.zip_code ;;
  }

  dimension_group: created_at {
    hidden: yes
    type: time
    sql: ${TABLE}.created_at ;;
  }

  dimension: region_definition {
    label: "Region"
    type: string
    sql: ${TABLE}.region_definition ;;
  }

  dimension: active {
    label: "IsActive"
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: lgd {
    label: "Last Collected"
    type: date
    sql: ${TABLE}.last_gathered_date ;;
  }

  set: detail {
    fields: [listing_id, host_id, name, rental_type, property_type, rating, photo_count, bedrooms, bathrooms, accomdates, base_price, cleaning_fee, extra_people, min_stay, latitiude, longitude, location, zip_code, created_at_time, region_definition]
  }
}
