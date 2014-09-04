class StaticController < ApplicationController

  before_action :header

  def index
    if current_user
      @items = current_user.items.all
      @comment = Comment.new
    else
      redirect_to welcome_path
    end
  end

end
