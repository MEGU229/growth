class FavoritesController < ApplicationController

  def create
    @manual=Manual.find(params[:manual_id])
    if Favorite.create(user_id: current_user.id,manual_id:@manual.id)
    redirect_to manual_path(@manual.id)
    else
      redirect_to root_path
    end

  end

  def destroy
    @manual=Manual.find(params[:manual_id])
    if favorite=Favorite.find_by(user_id: current_user.id,manual_id:@manual.id)
      favorite.delete
      redirect_to manual_path(@manual.id)
    else
      redirect_to root_path
    end
  end
end
