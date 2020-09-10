class Booking < ApplicationRecord
    belongs_to :flight
    belongs_to :user

    validates :seat_number, numericality: {greater_than: 0, less_than_or_equal: 100}
    validates :seat_number, presence: true
    
    validate :uniq_flight_number, on: :create
    
    def uniq_flight_number
        # byebug
        self.user.flights.each do |flight|
            if flight.flight_number == self.flight.flight_number
                self.errors.add(:You,"have already booked this flight!")
            end
        end
    end
  
end



    