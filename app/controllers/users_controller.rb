class UsersController < ApplicationController

  def new
    @new = User.new
  end

  def create
    User.create(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:name, :age)
  end
end
