class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @manuals = @user.manuals
  end
end
