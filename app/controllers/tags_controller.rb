class TagsController < ApplicationController

  # Note: tags controller for testing

  def destroy
    Tag.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end
  
end
