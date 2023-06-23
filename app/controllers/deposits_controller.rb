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
    @deposit = Deposit.find(params[:id])
  end
  def new
    @deposit = Deposit.new
  end
  def create
    @deposit = Deposit.new(deposit_params)
    @deposit.save
    redirect_to deposit_path(@deposit)
  end
  private
  def flat_params
    params.require(:deposit).permit(:name, :address, :total_capacity, :remaining_capacity, :status, :rating, :longitude, :latitude, :photo)
  end
end
