view: everbooked_host {
  derived_table: {
    sql: select * from everbooked_pillow_host
      ;;
  }

  measure: count {
    label: "Count"
    type: number
    sql: count(distinct ${TABLE}.host_id) ;;
  }

  dimension: host_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.host_id ;;
  }

  dimension: name {
    label: "Name"
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: review_count {
    label: "Review Count"
    type: number
    sql: ${TABLE}.review_count ;;
  }

  measure: review_counta {
    label: "Review Count (Avg)"
    type: average
    sql: ${review_count} ;;
    value_format_name: decimal_2
  }

  measure: review_counts {
    label: "Review Count (Sum)"
    type: sum
    sql: ${review_count} ;;
  }

  dimension: superhost {
    label: "IsSuperhost"
    type: yesno
    sql: ${TABLE}.superhost is true ;;
  }

  measure: superhosta {
    type: number
    label: "Superhost %"
    sql: sum(case when ${TABLE}.superhost is true then 1 else 0 end) / count(${TABLE}.host_id) ;;
  }

  measure: superhosts {
    type: sum
    label: "Superhost (Total)"
    sql: case when ${TABLE}.superhost is true then 1 else 0 end ;;
  }

  dimension: member_since {
    label: "Member Since"
    type: date
    sql: ${TABLE}.member_since ;;
  }

  measure: member_sincea {
    label: "Membership Duration"
    type: average
    sql: DATE_PART('day', now() - ${TABLE}.member_since) ;;
    value_format_name: decimal_2
  }

  dimension: location {
    label: "Host Location"
    type: string
    sql: ${TABLE}.location ;;
  }

  set: detail {
    fields: [host_id, name, review_count, superhost, member_since, location]
  }
}
