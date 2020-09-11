class BookingsController < ApplicationController

    def index 
        @bookings = Booking.all
    end 

    def show 
        @booking = Booking.find(params[:id])
    end 

    def new
        @booking = @current_user.bookings.new
    end

    def create
        
        @booking = @current_user.bookings.create(booking_params)
        # byebug
        if @booking.valid?
            redirect_to user_path(@booking.user)
        else
            flash[:errors] = @booking.errors.full_messages
            redirect_to new_booking_path
        end
    end

    

    def edit
        @booking = Booking.find(params[:id])
    end
    
    def update
        @booking = Booking.find(params[:id]) 
        if @booking.update(booking_params)
            redirect_to user_path(@booking.user)
        else 
            flash[:my_errors] = @booking.errors.full_messages
            redirect_to edit_booking_path(@booking)
        end
    end

    def destroy 
        @booking = Booking.find(params[:id])
        @booking.destroy

        redirect_to user_path(@booking.user)
    end 

    private

    def booking_params
        params.require(:booking).permit!
    end
end
