class CommentsController < ApplicationController

  def index
    @comment = Comment.new
    @items = Item.all
  end

  def destroy
    @comment = Comment.find(params[:id])
    # Destroy Item
    @comment.destroy
    redirect_to root_path
  end

  def create
    @item = Item.find(params[:item_id])
    @comment = current_user.comments.new(comment_params)
    @comment.item_id = @item.id
    if @comment.save
      redirect_to :back
    else
      render 'users/index'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :item_id)
  end

end
