class User < ApplicationRecord
    has_many :bookings, dependent: :destroy
    has_many :flights, through: :bookings

    validates :name, presence: true
    # validates :email_address, presence: true
    # validates :email_address, uniqueness: true
    validates :password, presence: true
     
    has_secure_password

    # def password=(secret)
    #  pw = BCrypt::Password.create(secret)
    #  self.password_digest = pw
    # end 

    def no_booking
        self.flights.empty?
    end

end
