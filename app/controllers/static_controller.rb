class StaticController < ApplicationController

  before_action :header

  def index
    @static = true
    @tag_items = Item.all
    @category_options = current_user.categories.sort_by{ |alpha| alpha.name.downcase }.map { |c| [ c.name, c.id ] }
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
