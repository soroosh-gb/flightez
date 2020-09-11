class Booking < ApplicationRecord
    belongs_to :flight
    belongs_to :user

    validates :seat_number, numericality: {greater_than: 0, less_than_or_equal: 100}
    validates :seat_number, presence: true
    
    validate :uniq_flight_number, on: :create
    validate :uniq_seat_number, on: :create
    
    def uniq_flight_number
        self.user.flights.each do |flight|
            if flight.flight_number == self.flight.flight_number
                self.errors.add(:You,"have already booked this flight!")
            end
        end
    end
    
    def taken_seats
        taken_seat_numbers = []
        Booking.all.each do |booking|
           if self.flight.flight_number == booking.flight.flight_number
              taken_seat_numbers << booking.seat_number
           end
        end
        taken_seat_numbers
    end

  
    def uniq_seat_number
        if taken_seats.include? (self.seat_number)
            self.errors.add(:Seat,"is taken... Try another seat!")
        end
    end

    

end



    