class CategoriesController < ApplicationController
  def index
  end

  def create
    @category = User.categories.create
  end

  def destroy
    @category = @category.destroy
    end
  end
  
end
