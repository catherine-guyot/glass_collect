class DepositsController < ApplicationController
  def show
    @deposit = Deposit.find(params[:id])
  end
  # def new
  #   @deposit = Deposit.new
  # end
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
