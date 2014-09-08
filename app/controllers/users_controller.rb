class UsersController < ApplicationController

  before_action :header

  respond_to :json

  def index
    @users = User.all
    respond_with @users, each_serializer: UserSerializer
  end

  def show
    @user = User.find(params[:id])
    # @items = @user.items.all
    # @comment = Comment.new
  end

  def new
    @has_navbar = false
    @user = User.new
    @is_signup = true
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    if current_user == User.find(params[:id])
      @user = current_user
    else
      redirect_to welcome_path
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    # Logout user before deleting account
    reset_session
    User.find(params[:id]).destroy
    redirect_to welcome_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :name, :email, :password, :password_confirmation)
  end

end
