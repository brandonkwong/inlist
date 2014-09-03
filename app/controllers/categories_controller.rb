class CategoriesController < ApplicationController
  def index
    @category = Category.all
  end

  def create
    @category = current_user.categories.new(params.require(:category).permit(:name, :item_id))
    if @category.save
      redirect_to index_path
    else
      render 'new'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to root_path
  end
  
end

    