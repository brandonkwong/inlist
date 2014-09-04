class CategoriesController < ApplicationController
  before_action :header


  def index
    @category = Category.all
    @users = User.all
  end
  
  

  def create
    # @user = User.find(params[:user_id])
    @category = current_user.categories.new(category_params)
    # @category.user_id = @user.id
    if @category.save
      redirect_to categories_path
    else
      render 'users/index'
    end
  end

  # def edit
  #   if current_user == Category.find(params[:id]).user
  #     @category = Category.find(params[:id])
  #     redirect_to root_path
  #   else
  #     redirect_to root_path
  #   end
  # end

  # def update
  #   @category = Category.find(params[:id])
  #   if @category.update_attributes(category_params)
  #     redirect_to root_path
  #   else
  #     render 'edit'
  #   end
  # end

  # def destroy
  #   @category = Category.find(params[:id])
  #   @category.destroy
  #   redirect_to root_path
  # end

  private

  def category_params
    params.require(:category).permit(:name, :user_id)
  end
  
end

    