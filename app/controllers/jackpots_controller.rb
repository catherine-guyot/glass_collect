class JackpotsController < ApplicationController
  def show
    @jackpot = Jackpot.find(params[:id])
  end
end
