class JackpotsController < ApplicationController

  def show
    @jackpot = current_user.jackpot
  end

end
