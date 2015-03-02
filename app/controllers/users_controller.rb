class UsersController < ApplicationController
expose(:review)
expose(:product)
	def new
  	end

	def show
	  @user = User.find(params[:id])
	  @review = Review.order("created_at DESC").limit(5).where(:user_id => @user)
	end
end