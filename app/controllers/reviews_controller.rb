class ReviewsController < ApplicationController

  expose(:review)
  expose(:product)
  before_filter :authenticate_user!
  def index
    @reviews = Review.all
  end

  def new
  end

  def edit
  end

  def create
    self.review = Review.new(review_params)

    if review.save
      product.reviews << review
      redirect_to category_product_url(product.category, product), notice: 'Review was successfully created.'
    else
      render action: 'new'
    end
  end

  def destroy
    review.destroy
    redirect_to category_product_url(product.category, product), notice: 'Review was successfully destroyed.'
  end

  def show
    @review = Review.find(:id => params[:id])
  end

  private
    def review_params
      params.require(:review).permit(:content, :rating, :user_id)
    end
end
