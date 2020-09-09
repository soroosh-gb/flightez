class Booking < ApplicationRecord
    belongs_to :flight
    belongs_to :user

    validates :seat_number, numericality: {greater_than: 0, less_than_or_equal: 100}
    validates :seat_number, presence: true
    
    # validate :uniq_flight_number
    
    # def uniq_flight_number
    #     Booking.all.each do |flight|
    #         if self && self.flight.flight_number == flight.flight_number
    #             self.errors.add("You have already booked this flight!")
    #         end
    #     end
    #     # @current_user.flight.flight_number = self.flight.flight_number
    #     # self.flights.each do |flight|
    #     #     if flight.flight_number = flight_number
    #     #         self.errors.add("You have already booked this flight!")
    #     #     end
    #     # end
    # end
    
    
    
end



    