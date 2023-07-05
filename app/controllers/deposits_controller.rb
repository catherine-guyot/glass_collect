class DepositsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index

    @deposits = Deposit.all
    if params[:query_number].present? && params[:query_address].present?
      @deposits = @deposits.where("remaining_capacity > ?", params[:query_number])
      @deposits = @deposits.near(params[:query_address], 1)
    end
    @markers = @deposits.geocoded.map do |deposit|
      average = deposit.reviews.average(:rating)
      {
        lat: deposit.latitude,
        lng: deposit.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { deposit: deposit, average: average }),
        marker_html: render_to_string(partial: "marker")
      }
    end
    @deposit = @deposits.first # Assign the first deposit to @deposit or modify this line based on your logic
  end

  # def show
  #   @deposit = Deposit.find(params[:id])
  # end

  def new
    @deposit = Deposit.new
  end

  def create
    @deposit = Deposit.new(deposit_params)
    @deposit.save
    redirect_to deposit_path(@deposit)
  end


  def destroy
    @deposit = Deposit.find(params[:id])
    @deposit.destroy
    redirect_to root_path, status: :see_other
  end


  private

  def flat_params
    params.require(:deposit).permit(:name, :address, :total_capacity, :remaining_capacity, :status, :rating, :longitude, :latitude, :photo)
  end

end
