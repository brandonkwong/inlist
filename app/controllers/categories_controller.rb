class CategoriesController < ApplicationController
  before_action :header

  def index
    @category = Category.all
  end

  def create
    @user = User.find(params[:user_id])
    @category = current_user.categories.new(params.require(:category).permit(:name))
    if @category.save
      redirect_to index_path
    else
      render 'new'
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

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params.require(:category).permit(:name))
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to root_path
  end
  
end

    