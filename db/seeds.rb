# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

airport_codes = ["NYC", "LAX", "SFO", "ORD", "ATL",
                 "DFW", "MIA", "SEA", "BOS", "DEN"]
 
 airport_codes.each do |airport_code|
    Airport.find_or_create_by!(code: airport_code)
end

airports = Airport.all

20.times do
  departure_airport, arrival_airport = airports.sample(2)
  start_datetime = Faker::Time.forward(days: 30)
  duration = rand(20..150)

  Flight.create!(
    departure_airport: departure_airport,
    arrival_airport: arrival_airport,
    start_datetime: start_datetime,
    duration: duration)
end