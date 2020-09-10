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

- [X] User can view their bookings (user show page)    SOROOSH
    - [X] add button to edit each booking (seat number)
    - [X] add button to cancel/delete/destroy each booking

- [X] change their seat 
    - [X] create a edit form in 'booking edit.html.erb'
    - [X] redirect them to the same booking show page to see the updates

- [X] Cancle a booking (Joe)
    - [X] in destroy action of booking controller
    - [X] redirect to user show page

- [] Browse available flight (erik)
    - [X] create a search bar/dropdown in booking index page to search for departure and destination
    - [X] in the new page, user should be able to book the flight and be redirected to user show page
    and/or
    - [X] be able to go back to new booking page and search for more flights

- [] *** Show only available seat number in a dropdown


--------------------------------------------------------
#####EXTRAS######
- [] 
--------------------------------------------------------------

- [X] validation --> check on seat number (presence and between 0-100)
- [X] Validation ----> user cant buy the same ticket
- [X] validation--> login and signup validations (name, password)

-----------------------------------
what to see where?

- [X]  session/new (main page) 
    - sign-in ---> user/show page
    - sign-up ---> new user form

    - Pictures of destinations

- [X] User show page
    - welcome back note
    - [X]List of bookings (a picture from their destination could be nice)
        -[X] Edit (change seat) button for each booking  ---> Booking/edit view
        - [X]Cancel booking button for each booking ----> return back to user/show view

    - A button/link for New Booking/Book a flight ---> booking/new form
        - give them a confirmation message after booking
        - validation for selecting seat number
        - validation for unique seat number
        - [X]redirect to user show page after booking and show them the update

----------------------------------------------------------------------------
############LETS DO IT#####################
    
    - Header
        - Add a header on top that holds all the buttons and fix the image issue
        - Fix the style for  "Logout" button (functionality is right)
        - Move "Logout" button to the right
        - a little space between buttons could be nice

    
    - New Booking Form
        - needs a background to be more redable
    
    - User Show page
        - Work on ticket style

    - 

    
    - Footer
        - Move "Contact us" to the center
        - Footer (contacts) can be lower. It is kind of in the middle now




