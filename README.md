# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


- [X] User login
- [X] User sign up
- [X] User logout
- [X] Welcome message when user is logged in
----------------------------------------------------
- [X] User can book a flight
    - [X] need a form (booking new.html.erb)
    - [X] where to redirect afterwards? (users show page)

- [] User can view their bookings (user show page)    SOROOSH
    - [] add button to edit each booking (seat number)
    - [] add button to cancel/delete/destroy each booking

- [] change their seat 
    - [] create a edit form in 'booking edit.html.erb'
    - [] redirect them to the same booking show page to see the updates

- [] Cancle a booking (Joe)
    - [] in destroy action of booking controller
    - [] redirect to user show page

- [] Browse available flight (erik)
    - [] create a search bar/dropdown in booking index page to search for departure and destination, each booking need to be clickable (link_to) so it takes users to a booking show page
    - [] in the new page, user should be able to book the flight and be redirected to user show page
    and/or
    - [] be able to go back to booking index page and search for more flights
--------------------------------------------------------------

- [] validation--> see an error if the date they insert is incorrest format
- [] validation--> login and signup validations (name, password, email)

