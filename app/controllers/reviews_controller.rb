class ReviewsController < ApplicationController

  def index
    @deposit = Deposit.find(params[:deposit_id])
    @review = Review.new
    @reviews = Review.all
    @reviews = @deposit.reviews

  end

  def show
    @deposit = Deposit.find(params[:deposit_id])
    @review = @deposit.reviews.find(params[:id])

  end

  def create
    @deposit = Deposit.find(params[:deposit_id])
    @review = Review.new(review_params)
    @review.deposit = @deposit
    @review.user = current_user
    if @review.save
      redirect_to deposit_reviews_path(@deposit)
    else
      render "reviews/index", status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to deposit_reviews_path(@review.deposit), notice: 'Le commentaire a été supprimé avec succès.'
    # redirect_to root_path, status: :see_other
  end


  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
