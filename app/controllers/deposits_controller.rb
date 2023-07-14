class DepositsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @deposits = Deposit.all
    # params[:search][:address]
    # query_number = params[:search][:query_number]
    if params[:search] && params[:search][:address].present? && params[:search][:query_number].present?
      @deposits = @deposits.near(params[:search][:address], 1)
      @deposits = @deposits.where("remaining_capacity > ?", params[:search][:query_number])
    end
    if params[:search] && params[:search][:query_number].present? && params[:search][:address] == ""
      @deposits = @deposits.where("remaining_capacity > ?", params[:search][:query_number])
    end
    if params[:search] && params[:search][:query_number] == "" && params[:search][:address].present?
      @deposits = @deposits.near(params[:search][:address])
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
