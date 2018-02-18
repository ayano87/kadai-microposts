class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = User.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success] = "お気に入り登録しました。"
    redirect_to root
  end

  def destroy
    micropost = User.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success] = "お気に入り登録しました。"
    redirect_to root
  end
end
