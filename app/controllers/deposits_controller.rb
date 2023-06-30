class DepositsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index

    @deposits = Deposit.all
    @markers = @deposits.geocoded.map do |deposit|
      {
        lat: deposit.latitude,
        lng: deposit.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { deposit: deposit }),
        marker_html: render_to_string(partial: "marker")
      }
    end
    if params[:query].present?
      @deposits = @deposits.where("remaining_capacity > ?", params[:query])
      if @deposits
        @markers = @deposits.geocoded.map do |deposit|
          {
            lat: deposit.latitude,
            lng: deposit.longitude,
            info_window_html: render_to_string(partial: "info_window", locals: { deposit: deposit }),
            marker_html: render_to_string(partial: "marker")
          }
        end
      else
        @markers = []
      end
    end
    @deposit = @deposits.first # Assign the first deposit to @deposit or modify this line based on your logic
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
