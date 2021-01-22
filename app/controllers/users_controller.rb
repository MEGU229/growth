class UsersController < ApplicationController
  def show
    if user_signed_in?
    @user = User.find(params[:id])
    @manuals = @user.manuals
    favorites = Favorite.where(user_id: current_user.id).pluck(:manual_id)
    @favorite_manuals = Manual.where(id: favorites).includes(:user)
    else
    redirect_to root_path
    end
  end
end
