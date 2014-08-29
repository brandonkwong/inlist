class UsersController < ApplicationController

  before_action :header

  def index
    @users = User.all
  end

  def show
  end

  def new
    @navbar = false
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





  

  # def edit
  # end


  # def update
  # end

  # def destroy
  #   User.find(params[:id]).destroy
  #   # Exactly the same idea as this little number:
  #   #    User.find_by(id: params[:id])
  #   redirect_to users_path
  # end


  private

  def user_params
    params.require(:user).permit(:username, :name, :email, :password, :password_confirmation)
  end

end
