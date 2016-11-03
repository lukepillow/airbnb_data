view: everbooked_amenities {
  derived_table: {
    sql: select * from everbooked_pillow_amenities
      ;;
  }

  measure: count {
    label: "Count"
    type: count
    drill_fields: [detail*]
  }

  dimension: airbnb_listing_id {
    hidden: yes
    type: string
    sql: ${TABLE}.airbnb_listing_id ;;
  }

  dimension: airbnb_amenities_type_id {
    hidden: yes
    type: number
    sql: ${TABLE}.airbnb_amenities_type_id ;;
  }

  dimension: name {
    label: "Amenity"
    type: string
    sql: ${TABLE}.name ;;
  }

  set: detail {
    fields: [airbnb_listing_id, airbnb_amenities_type_id, name]
  }
}
