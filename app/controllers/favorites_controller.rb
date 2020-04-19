class FavoritesController < ApplicationController
  def index
    @user = current_user
    @favorites = @user.favorites.art.all
  end

  def create
    favorite = current_user.favorites.build(art_id: params[:art_id])
    favorite.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    favorite = Favorite.find_by(art_id: params[:art_id], user_id: current_uset.id)
    favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end
