class ItemsController < ApplicationController

  def index
    @item = MetaInspector.new(params[:url])
    # respond_to do |format|
    #   format.json { render :json => [
    #         title: page.title,
    #         description: page.description
    #     ] }
    # end
  end

  def create
    @item = Item.new(params.require(:item).permit(:title, :description, :image, :url)) 
    if @item.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def new 
    @item = Item.new
  end

end
