class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @bookings = current_user.bookings
    current_user.booking.number_of_bottles = current_user.booking.number_of_bottles + @booking.number_of_bottles
  end

  def about
  end
end
