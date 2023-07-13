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
    if @booking.save
      @deposit.remaining_capacity = @deposit.remaining_capacity - @booking.number_of_bottles
      @deposit.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = 1
    current_user.jackpot.value = current_user.jackpot.value + (@booking.number_of_bottles * 0.5)
    current_user.jackpot.end_date = @booking.end_date + 3.month
    current_user.jackpot.quantity = current_user.jackpot.quantity + @booking.number_of_bottles
    @booking.save
    current_user.jackpot.save
    @deposit = @booking.deposit
    redirect_to deposit_reviews_path(@deposit)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @deposit = @booking.deposit
    @deposit.remaining_capacity = @deposit.remaining_capacity + @booking.number_of_bottles
    @deposit.save
    @booking.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date,:number_of_bottles)
  end

end
