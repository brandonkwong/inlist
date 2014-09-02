class CategoriesController < ApplicationController
  def index
    @category = Category.all
  end

  def create
    @category = User.Category.new(params.require(:category).permit(:name, :item_id))
    if @category.save
      redirect_to index_path
    else
      render 'new'
    end
  end

  def destroy
    @category = @category.destroy
  end
  
end

    