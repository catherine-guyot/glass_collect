class BookingsController < ApplicationController

  def new
    @deposit = Deposit.find(params[:deposit_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @deposit = Deposit.find(params[:deposit_id])
    @booking.user = current_user
    @booking.deposit = @deposit
    @booking.end_date = @booking.start_date + 24.hours
    @booking.status = 0
    @booking.save
    redirect_to dashboard_path
    # else
    #   render :new, status: unprocessable_entity
    # end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date,:number_of_bottles)
  end

end
