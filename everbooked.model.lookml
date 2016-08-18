- connection: airbnb

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

- explore: everbooked_airbnb
  label: "Short Term Rental Data"
  joins:
    - join: everbooked_amenities 
      sql_on: ${everbooked_amenities.airbnb_listing_id} = ${everbooked_airbnb.listing_id}
      relationship: one_to_many
      view_label: "Amenities"
      
    - join: everbooked_calendar 
      sql_on: ${everbooked_calendar.airbnb_listing_id} = ${everbooked_airbnb.listing_id}
      relationship: one_to_many
      view_label: "Calendar"
      
    - join: everbooked_host
      sql_on: ${everbooked_host.host_id} = ${everbooked_airbnb.host_id}
      relationship: one_to_one
      view_label: "Hosts"
      
    - join: everbooked_occupancy
      sql_on: ${everbooked_occupancy.airbnb_listing_id} = ${everbooked_airbnb.listing_id}
      relationship: one_to_one
      view_label: "Occupancy"
      
    - join: everbooked_quartiles
      sql_on: ${everbooked_quartiles.airbnb_listing_id} = ${everbooked_airbnb.listing_id}
      relationship: one_to_one
      view_label: "Quartiles"
      
    - join: everbooked_reservations
      sql_on: ${everbooked_reservations.airbnb_listing_id} = ${everbooked_airbnb.listing_id}
      relationship: one_to_many
      view_label: "Reservations"      
    