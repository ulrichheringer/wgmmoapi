class UsersController < ApplicationController
  def create
    @user = User.new(params.required(:user).permit(:email, :username, :password))
    if @user.save
      redirect_to root_path
    else
      render plain: "Not able to create user!"
    end
  end

  def index
    @users = User.all
    render json: @users
  end
end
