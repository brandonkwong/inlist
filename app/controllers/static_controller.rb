class StaticController < ApplicationController

  before_action :header

  def index
    @static = true
    @tag_items = Item.all
    if current_user
      @items = current_user.items.all
      @comment = Comment.new
    else
      redirect_to welcome_path
    end
  end

  def new
    @item = MetaInspector.new(params[:url])
    @tag = Tag.new
  end

end
