class JackpotsController < ApplicationController

  def show
    # Add your code here to handle the request and generate the jackpot data
    # For example:
    @jackpot_amount = calculate_jackpot_amount
  end

  def calculate_jackpot_amount
    total_users = User.count
    base_amount = 1000
    jackpot = base_amount + (total_users * 10)
    jackpot
  end
end
