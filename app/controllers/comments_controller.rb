class CommentsController < ApplicationController
  before_action :header

  def index
    @comment = Comment.new
  end


  def create
    @item = Comment.find(params[:item_id])
    @comment = current_user.comments.new
    @comment.item = @item
    if @comment.save
      redirect_to root_path
    else
      render 'users/index'
    end
  end
end
