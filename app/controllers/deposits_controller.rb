class DepositsController < ApplicationController
  def index
    @deposits = Deposit.all
    if params[:query].present?
      @deposits = @deposits.where("remaining_capacity > ?", params[:query])
    else
      "Oups, aucune re-use box ne peut absorber #{params[:query]} bouteilles"
    end
    @markers = @deposits.geocoded.map do |deposit|
      {
        lat: deposit.latitude,
        lng: deposit.longitude
      }
    end
  end


  def show

  end
end
