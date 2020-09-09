class BookingsController < ApplicationController

    def index 
        @bookings = Booking.all
    end 

    def show 
        @booking = Booking.find(params[:id])
    end 

    def new
        @booking = Booking.new
    end

    def create
        @current_user.bookings << Booking.create(booking_params)
       
        redirect_to user_path(@current_user)
    end

    def edit
        @booking = Booking.find(params[:id])
    end
    
    def update
        @booking = Booking.find(params[:id])  
        @booking.update(booking_params)

        redirect_to user_path(@booking.user)
    end

    # def destroy 
    #     @booking = Booking.find(params[:id])
    #     @booking.destroy

    #     redirect_to user_path(@booking.user)
    # end 

    private

    def booking_params
        params.require(:booking).permit!
    end
end
