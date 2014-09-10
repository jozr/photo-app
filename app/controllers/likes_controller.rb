class LikesController < ApplicationController

  def new
    @like = Like.new
  end

  def create
    @photo = Photo.find(params[:photo_id])
    @user = User.find(params[:user_id])
    params[:like] = {photo_id: params[:photo_id]}
    @like = Like.create(like_params)
    if @like.valid?
      flash[:notice] = "Your like has been counted!"
      Photo.increment_counter(:tally, @like.photo_id)
      redirect_to user_photo_path(@photo.user, @photo)
    else
      redirect_to user_photo_path(@user, @photo)
    end
  end

private

  def like_params
    params.require(:like).permit(:photo_id, :user_id).merge(:user_id => current_user.id)
  end
end
