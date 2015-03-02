class CategoriesController < ApplicationController
  expose(:categories)
  expose(:category)
  expose(:product) { Product.new }

  def index
  end

  def show
  end

  def new
    if !current_user.try(:admin?)
      redirect_to(new_user_session_path)
    end
  end

  def edit
    if !current_user.try(:admin?)
      redirect_to(new_user_session_path)
    end
  end

  def create
    if current_user.try(:admin?)
      self.category = Category.new(category_params)

      if category.save
        redirect_to category, notice: 'Category was successfully created.'
      else
        render action: 'new'
      end
    else
      redirect_to(new_user_session_path)
    end
  end

  def update
    if current_user.try(:admin?)
      if category.update(category_params)
        redirect_to category, notice: 'Category was successfully updated.'
      else
        render action: 'edit'
      end
    else
      redirect_to(new_user_session_path)
    end
  end

  def destroy
    if
    category.destroy
    redirect_to categories_url, notice: 'Category was successfully destroyed.'
    end
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
