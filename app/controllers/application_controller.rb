class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :navbar
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def navbar
    @user_login = User.new
    @is_login = true
    @categories = current_user.categories.all if current_user
  end

  # Default for Active Model Serializers
  def default_serializer_options  
    { root: false }  
  end
  
end
