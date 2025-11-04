# README

**Odin Flight Booker** is a Ruby on Rails application designed to simulate a simplified flight booking system — similar to the first stages of a real-world airline checkout process.

This project focuses on **advanced form handling**, **nested attributes**, and **Active Record associations**.
It is part of [The Odin Project’s Ruby on Rails curriculum](https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker), offering experience with building dynamic forms and managing multi-step user input.

---

## Introduction

In this project, I will build the first three steps of a typical airline booking flow:

1. **Search for flights** – Select departure and arrival airports, travel date, and number of passengers.
2. **Choose a flight** – Pick one from the available flight options.
3. **Enter passenger details** – Provide names and emails for each passenger.

*(Step 4, payment processing, is omitted — it could be integrated later using PayPal, Stripe, or similar APIs.)*

---

## Features

- **Flight Search** — Search flights by airport, date, and number of passengers.
- **Dynamic Dropdowns** — Populate flight dates and airport lists directly from the database.
- **Booking Creation** — Book a selected flight and enter details for multiple passengers.
- **Nested Forms** — Use `fields_for` to create passenger fields dynamically.
- **Data Seeding** — Prepopulate airports and flights using the `db/seeds.rb` file.
- **Clear and Reseed** — Quickly reset and reseed data with `rake db:seed:replant`.

---

## How It Works

### Screen 1 — Search for Flights
Users can select:
- **Departure Airport**
- **Arrival Airport**
- **Date**
- **Number of Passengers**

Once submitted, the system queries available flights and displays the results on the same page.

### Screen 2 — Pick a Flight
- The user reviews the list of available flights matching their criteria.
- Each flight appears with a **radio button** allowing the user to select one.
- Upon selecting a flight, the user proceeds to the booking form.

### Screen 3 — Passenger Information
- The user fills in details for each passenger.
- The form uses **nested attributes** to handle multiple passenger entries.
- On submission, a **Booking** is created and linked to the chosen **Flight** and **Passengers**.
- The confirmation page shows the complete booking and flight details.

---

## Built With

- **Ruby** – 3.3.5
- **Ruby on Rails** – 8.0.4
- **PostgreSQL** – Database  
- **RSpec** – For testing
- **HTML / ERB** – For views (styles.css was not created in assets)

---

## Author

**Ivan Pagani**  
- LinkedIn: [Ivan Pagani](https://www.linkedin.com/in/ivan-pagani-fernandes/) 

---

## License

This project is open-source and available under the **[MIT License](https://github.com/IvanPagani/flight-booker?tab=MIT-1-ov-file)**.