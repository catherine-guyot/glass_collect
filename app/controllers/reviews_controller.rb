class ReviewsController < ApplicationController


  # def show
  #   @deposit = Deposit.find(params[:id])
  #   @deposit = Deposit.new
  # end

  # def create
  #   @deposit = Deposit.find(params[:restaurant_id])
  #   @review = Review.new(review_params)
  #   @review.deposit = @deposit
  #   if @review.save
  #     redirect_to restaurant_path(@deposit)
  #   else
  #     render "deposit/show", status: :unprocessable_entity
  #   end
  # end

  # private

  # def review_params
  #   params.require(:review).permit(:content)
  # end
end
