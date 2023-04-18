class RelationshipsController < ApplicationController
  def create
    @user = User.find(params[:followed_id])
    current_user.follow(@user)
    redirect_to @user
  end

  def destroy
    @user = current_user.unfollow(params[:id])
    redirect_to @user
  end
end
