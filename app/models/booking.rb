class Booking < ApplicationRecord
    belongs_to :flight
    belongs_to :user

    # validates :seat_number, numericality: {greater_than: 0, less_than: 100}
end
