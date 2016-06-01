- view: airbnb_real_parsed_usa_booking_rates_20140821
  sql_table_name: public.airbnb_real_parsed_usa_booking_rates_20140821
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: age
    type: string
    sql: ${TABLE}.age

  - dimension: air_conditioning
    type: string
    sql: ${TABLE}.air_conditioning

  - dimension: airbnb_id
    type: string
    sql: ${TABLE}.airbnb_id

  - dimension: amenities_ids
    type: string
    sql: ${TABLE}.amenities_ids

  - dimension: avail_rate
    type: string
    sql: ${TABLE}.avail_rate

  - dimension: avg_household_size
    type: string
    sql: ${TABLE}.avg_household_size

  - dimension: avg_pic_std
    type: string
    sql: ${TABLE}.avg_pic_std

  - dimension: avg_price
    type: string
    sql: ${TABLE}.avg_price

  - dimension: bathrooms
    type: string
    sql: ${TABLE}.bathrooms

  - dimension: bed_type
    type: string
    sql: ${TABLE}.bed_type

  - dimension: bed_type_category
    type: string
    sql: ${TABLE}.bed_type_category

  - dimension: bedrooms
    type: string
    sql: ${TABLE}.bedrooms

  - dimension: beds
    type: string
    sql: ${TABLE}.beds

  - dimension: breakfast
    type: string
    sql: ${TABLE}.breakfast

  - dimension: buzzer_wireless_intercom
    type: string
    sql: ${TABLE}.buzzer_wireless_intercom

  - dimension: cable_tv
    type: string
    sql: ${TABLE}.cable_tv

  - dimension: calendar_updated_at
    type: string
    sql: ${TABLE}.calendar_updated_at

  - dimension: cancel_policy
    type: string
    sql: ${TABLE}.cancel_policy

  - dimension: cancel_policy_short_str
    type: string
    sql: ${TABLE}.cancel_policy_short_str

  - dimension: cancellation_policy
    type: string
    sql: ${TABLE}.cancellation_policy

  - dimension: carbon_monoxide_detector
    type: string
    sql: ${TABLE}.carbon_monoxide_detector

  - dimension: cat_s_
    type: string
    sql: ${TABLE}.cat_s_

  - dimension: check_in_time
    type: string
    sql: ${TABLE}.check_in_time

  - dimension: check_out_time
    type: string
    sql: ${TABLE}.check_out_time

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: city_avg_book_rate
    type: string
    sql: ${TABLE}.city_avg_book_rate

  - dimension: cleaning_fee_native
    type: string
    sql: ${TABLE}.cleaning_fee_native

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension: currency_symbol_left
    type: string
    sql: ${TABLE}.currency_symbol_left

  - dimension: currency_symbol_right
    type: string
    sql: ${TABLE}.currency_symbol_right

  - dimension: date_first_booked
    type: string
    sql: ${TABLE}.date_first_booked

  - dimension: density
    type: string
    sql: ${TABLE}.density

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: dog_s_
    type: string
    sql: ${TABLE}.dog_s_

  - dimension: doorman
    type: string
    sql: ${TABLE}.doorman

  - dimension: dryer
    type: string
    sql: ${TABLE}.dryer

  - dimension: elevator_in_building
    type: string
    sql: ${TABLE}.elevator_in_building

  - dimension: essentials
    type: string
    sql: ${TABLE}.essentials

  - dimension: experiences_offered
    type: string
    sql: ${TABLE}.experiences_offered

  - dimension: extras_price_native
    type: string
    sql: ${TABLE}.extras_price_native

  - dimension: family_kid_friendly
    type: string
    sql: ${TABLE}.family_kid_friendly

  - dimension: fire_extinguisher
    type: string
    sql: ${TABLE}.fire_extinguisher

  - dimension: first_aid_kit
    type: string
    sql: ${TABLE}.first_aid_kit

  - dimension: force_mobile_legal_modal
    type: string
    sql: ${TABLE}.force_mobile_legal_modal

  - dimension: free_parking_on_premises
    type: string
    sql: ${TABLE}.free_parking_on_premises

  - dimension: guests_included
    type: string
    sql: ${TABLE}.guests_included

  - dimension: gym
    type: string
    sql: ${TABLE}.gym

  - dimension: has_agreed_to_legal_terms
    type: string
    sql: ${TABLE}.has_agreed_to_legal_terms

  - dimension: has_double_blind_reviews
    type: string
    sql: ${TABLE}.has_double_blind_reviews

  - dimension: has_simplified_booking
    type: string
    sql: ${TABLE}.has_simplified_booking

  - dimension: has_viewed_cleaning
    type: string
    sql: ${TABLE}.has_viewed_cleaning

  - dimension: has_viewed_ib_perf_dashboard_panel
    type: string
    sql: ${TABLE}.has_viewed_ib_perf_dashboard_panel

  - dimension: has_viewed_terms
    type: string
    sql: ${TABLE}.has_viewed_terms

  - dimension: heating
    type: string
    sql: ${TABLE}.heating

  - dimension: hot_tub
    type: string
    sql: ${TABLE}.hot_tub

  - dimension: house_rules
    type: string
    sql: ${TABLE}.house_rules

  - dimension: housing_units
    type: string
    sql: ${TABLE}.housing_units

  - dimension: in_cta_copy_experiment
    type: string
    sql: ${TABLE}.in_cta_copy_experiment

  - dimension: in_request_to_book_copy_experiment
    type: string
    sql: ${TABLE}.in_request_to_book_copy_experiment

  - dimension: indoor_fireplace
    type: string
    sql: ${TABLE}.indoor_fireplace

  - dimension: instant_bookable
    type: string
    sql: ${TABLE}.instant_bookable

  - dimension: interaction
    type: string
    sql: ${TABLE}.interaction

  - dimension: internet
    type: string
    sql: ${TABLE}.internet

  - dimension: is_location_exact
    type: string
    sql: ${TABLE}.is_location_exact

  - dimension: jurisdiction_names
    type: string
    sql: ${TABLE}.jurisdiction_names

  - dimension: kitchen
    type: string
    sql: ${TABLE}.kitchen

  - dimension: kwelia_one_bedroom_avg_price
    type: string
    sql: ${TABLE}.kwelia_one_bedroom_avg_price

  - dimension: kwelia_one_bedroom_avg_price_sqft
    type: string
    sql: ${TABLE}.kwelia_one_bedroom_avg_price_sqft

  - dimension: kwelia_one_bedroom_med_price_sqft
    type: string
    sql: ${TABLE}.kwelia_one_bedroom_med_price_sqft

  - dimension: kwelia_one_bedroom_median_price
    type: string
    sql: ${TABLE}.kwelia_one_bedroom_median_price

  - dimension: language
    type: string
    sql: ${TABLE}.language

  - dimension: lat
    type: string
    sql: ${TABLE}.lat

  - dimension: license
    type: string
    sql: ${TABLE}.license

  - dimension: lng
    type: string
    sql: ${TABLE}.lng

  - dimension: locale
    type: string
    sql: ${TABLE}.locale

  - dimension: map_image_url
    type: string
    sql: ${TABLE}.map_image_url

  - dimension: market
    type: string
    sql: ${TABLE}.market

  - dimension: max_nights
    type: string
    sql: ${TABLE}.max_nights

  - dimension: max_nights_input_value
    type: string
    sql: ${TABLE}.max_nights_input_value

  - dimension: mean_commute_time
    type: string
    sql: ${TABLE}.mean_commute_time

  - dimension: median_age
    type: string
    sql: ${TABLE}.median_age

  - dimension: median_income
    type: string
    sql: ${TABLE}.median_income

  - dimension: medium_url
    type: string
    sql: ${TABLE}.medium_url

  - dimension: min_nights
    type: string
    sql: ${TABLE}.min_nights

  - dimension: min_nights_input_value
    type: string
    sql: ${TABLE}.min_nights_input_value

  - dimension: monthly_price_native
    type: string
    sql: ${TABLE}.monthly_price_native

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: native_currency
    type: string
    sql: ${TABLE}.native_currency

  - dimension: neighborhood
    type: string
    sql: ${TABLE}.neighborhood

  - dimension: neighborhood_overview
    type: string
    sql: ${TABLE}.neighborhood_overview

  - dimension: notes
    type: string
    sql: ${TABLE}.notes

  - dimension: num_listings_in_city
    type: string
    sql: ${TABLE}.num_listings_in_city

  - dimension: num_listings_in_zip
    type: string
    sql: ${TABLE}.num_listings_in_zip

  - dimension: other_pet_s_
    type: string
    sql: ${TABLE}.other_pet_s_

  - dimension: overall_book_rate
    type: string
    sql: ${TABLE}.overall_book_rate

  - dimension: owner_occupied_housing
    type: string
    sql: ${TABLE}.owner_occupied_housing

  - dimension: percent_unemployed
    type: string
    sql: ${TABLE}.percent_unemployed

  - dimension: person_capacity
    type: string
    sql: ${TABLE}.person_capacity

  - dimension: pets_allowed
    type: string
    sql: ${TABLE}.pets_allowed

  - dimension: pets_live_on_this_property
    type: string
    sql: ${TABLE}.pets_live_on_this_property

  - dimension: picture_captions
    type: string
    sql: ${TABLE}.picture_captions

  - dimension: picture_count
    type: string
    sql: ${TABLE}.picture_count

  - dimension: picture_url
    type: string
    sql: ${TABLE}.picture_url

  - dimension: picture_urls
    type: string
    sql: ${TABLE}.picture_urls

  - dimension: pool
    type: string
    sql: ${TABLE}.pool

  - dimension: population
    type: string
    sql: ${TABLE}.population

  - dimension: price
    type: string
    sql: ${TABLE}.price

  - dimension: price_for_extra_person_native
    type: string
    sql: ${TABLE}.price_for_extra_person_native

  - dimension: price_formatted
    type: string
    sql: ${TABLE}.price_formatted

  - dimension: price_native
    type: string
    sql: ${TABLE}.price_native

  - dimension: private_wage_employed
    type: string
    sql: ${TABLE}.private_wage_employed

  - dimension: property_avg_pic_brightness
    type: string
    sql: ${TABLE}.property_avg_pic_brightness

  - dimension: property_type
    type: string
    sql: ${TABLE}.property_type

  - dimension: property_type_id
    type: string
    sql: ${TABLE}.property_type_id

  - dimension: recent_review
    type: string
    sql: ${TABLE}.recent_review

  - dimension: renter_occupied
    type: string
    sql: ${TABLE}.renter_occupied

  - dimension: require_guest_phone_verification
    type: string
    sql: ${TABLE}.require_guest_phone_verification

  - dimension: require_guest_profile_picture
    type: string
    sql: ${TABLE}.require_guest_profile_picture

  - dimension: requires_license
    type: string
    sql: ${TABLE}.requires_license

  - dimension: reviews_count
    type: string
    sql: ${TABLE}.reviews_count

  - dimension: room_type
    type: string
    sql: ${TABLE}.room_type

  - dimension: room_type_category
    type: string
    sql: ${TABLE}.room_type_category

  - dimension: safety_card
    type: string
    sql: ${TABLE}.safety_card

  - dimension: scrape_date
    type: string
    sql: ${TABLE}.scrape_date

  - dimension: security_deposit_formatted
    type: string
    sql: ${TABLE}.security_deposit_formatted

  - dimension: security_deposit_native
    type: string
    sql: ${TABLE}.security_deposit_native

  - dimension: security_price_native
    type: string
    sql: ${TABLE}.security_price_native

  - dimension: shampoo
    type: string
    sql: ${TABLE}.shampoo

  - dimension: smart_location
    type: string
    sql: ${TABLE}.smart_location

  - dimension: smoke_detector
    type: string
    sql: ${TABLE}.smoke_detector

  - dimension: smoking_allowed
    type: string
    sql: ${TABLE}.smoking_allowed

  - dimension: space
    type: string
    sql: ${TABLE}.space

  - dimension: square_feet
    type: string
    sql: ${TABLE}.square_feet

  - dimension: star_rating
    type: string
    sql: ${TABLE}.star_rating

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - dimension: suitable_for_events
    type: string
    sql: ${TABLE}.suitable_for_events

  - dimension: summary
    type: string
    sql: ${TABLE}.summary

  - dimension: thumbnail_url
    type: string
    sql: ${TABLE}.thumbnail_url

  - dimension: total_employed
    type: string
    sql: ${TABLE}.total_employed

  - dimension: total_housing_units
    type: string
    sql: ${TABLE}.total_housing_units

  - dimension: transit
    type: string
    sql: ${TABLE}.transit

  - dimension: tv
    type: string
    sql: ${TABLE}.tv

  - dimension: user_acceptance_rate
    type: string
    sql: ${TABLE}.user_acceptance_rate

  - dimension: user_created_at
    type: string
    sql: ${TABLE}.user_created_at

  - dimension: user_first_name
    type: string
    sql: ${TABLE}.user_first_name

  - dimension: user_has_profile_pic
    type: string
    sql: ${TABLE}.user_has_profile_pic

  - dimension: user_id
    type: string
    sql: ${TABLE}.user_id

  - dimension: user_last_name
    type: string
    sql: ${TABLE}.user_last_name

  - dimension: user_picture_large_url
    type: string
    sql: ${TABLE}.user_picture_large_url

  - dimension: user_picture_url
    type: string
    sql: ${TABLE}.user_picture_url

  - dimension: user_publicly_visible_wishlists_count
    type: string
    sql: ${TABLE}.user_publicly_visible_wishlists_count

  - dimension: user_recommendation_count
    type: string
    sql: ${TABLE}.user_recommendation_count

  - dimension: user_response_rate
    type: string
    sql: ${TABLE}.user_response_rate

  - dimension: user_response_time
    type: string
    sql: ${TABLE}.user_response_time

  - dimension: user_reviewee_count
    type: string
    sql: ${TABLE}.user_reviewee_count

  - dimension: user_thumbnail_medium_url
    type: string
    sql: ${TABLE}.user_thumbnail_medium_url

  - dimension: user_thumbnail_url
    type: string
    sql: ${TABLE}.user_thumbnail_url

  - dimension: user_wishlists_count
    type: string
    sql: ${TABLE}.user_wishlists_count

  - dimension: washer
    type: string
    sql: ${TABLE}.washer

  - dimension: washer___dryer
    type: string
    sql: ${TABLE}.washer___dryer

  - dimension: weekday_price
    type: string
    sql: ${TABLE}.weekday_price

  - dimension: weekend_price
    type: string
    sql: ${TABLE}.weekend_price

  - dimension: weekly_price_native
    type: string
    sql: ${TABLE}.weekly_price_native

  - dimension: wheelchair_accessible
    type: string
    sql: ${TABLE}.wheelchair_accessible

  - dimension: wireless_internet
    type: string
    sql: ${TABLE}.wireless_internet

  - dimension: workers
    type: string
    sql: ${TABLE}.workers

  - dimension: workers_taking_public_transit
    type: string
    sql: ${TABLE}.workers_taking_public_transit

  - dimension: workers_walking
    type: string
    sql: ${TABLE}.workers_walking

  - dimension: xl_picture_url
    type: string
    sql: ${TABLE}.xl_picture_url

  - dimension: zip_avg_book_rate
    type: string
    sql: ${TABLE}.zip_avg_book_rate

  - dimension: zipcode
    type: string
    sql: ${TABLE}.zipcode

  - measure: count
    type: count
    drill_fields: [id, user_first_name, name, user_last_name]

