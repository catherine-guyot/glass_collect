class JackpotsController < ApplicationController

  def show
    # Add your code here to handle the request and generate the jackpot data
    # For example:
    @jackpot_amount = calculate_jackpot_amount
  end

  def deposit
    @jackpot = current_user.jackpot
    @jackpot.increment!(:amount, calculate_jackpot_amount + 10)
    # Redirect or render a response as needed
  end

  def calculate_jackpot_amount
    total_users = User.count
    base_amount = 0
    jackpot = base_amount + (total_users * 10)
    jackpot
  end
end
