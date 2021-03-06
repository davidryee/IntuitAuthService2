class UsersController < ApplicationController
  def new

  end

  def login_result
    userdata = params[:user]
    @user = User.where(username: userdata[:username], password: userdata[:password]).first
    redirect_to @user
  end

  def create
    @user = User.new(user_params)

    @user.save
    redirect_to @user
  end


  def show
    @user = User.find(params[:id])
  end

  def show_by_username
    @user = User.find_by(username: params[:username])
    redirect_to @user
  end
  private
    def user_params
      params.require(:user).permit(:username, :password)
    end
end
