class BookingsController < ApplicationController

  def new
    @deposit = Deposit.find(params[:deposit_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @deposit = Deposit.find(params[:deposit_id])
    @booking.deposit = @deposit
    @booking.end_date = @booking.start_date + 24.hours
    @booking.status = 0
    @booking.save
    redirect_to dashboard_path
    # else
    #   render :new, status: unprocessable_entity
    # end
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date,:number_of_bottles)
  end

end
