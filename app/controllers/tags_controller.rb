class TagsController < ApplicationController

  # Note: tags controller for testing

  respond_to :json

  def index
    @tags = Tag.all
    respond_with @tags, each_serializer: TagSerializer
  end

  def destroy
    Tag.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end
  
end
