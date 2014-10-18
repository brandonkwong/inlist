class CategoriesController < ApplicationController

  def index
    @categories = current_user.categories.all
  end

  def new
    @category = Category.new
  end
  
  def create
    # @user = User.find(params[:user_id])
    @category = current_user.categories.new(category_params)
    # @category.user_id = @user.id
    if @category.save
      redirect_to category_path(@category.id)
    else
      # render 'users/index'
    end
  end

  def edit
    if current_user == Category.find(params[:id]).user
      @category = Category.find(params[:id])
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def show
    if current_user.id == Category.find(params[:id]).user_id
      @category = Category.find(params[:id])
      @comment = Comment.new
    end
  end

  # def update
  #   @category = Category.find(params[:id])
  #   if @category.update_attributes(category_params)
  #     redirect_to root_path
  #   else
  #     render 'edit'
  #   end
  # end

  def destroy
    @category = Category.find(params[:id]).destroy
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :user_id)
  end
  
end
