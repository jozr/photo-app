class PhotosController < ApplicationController
  before_filter :authorize, only: [:edit, :update, :destroy]

  def index
    @user = User.find(params[:user_id])
    @photos = Photo.where(:user_id => @user.id)
  end

  def new
    @photo = Photo.new
  end

  def show
    @user = User.find(params[:user_id])
    @photo = Photo.find(params[:id])
    @tags = Tag.where(:photo_id => @photo.id)
  end

  def create
    @photo = Photo.create(user_params)
    if @photo.valid?
      session[:photo_id] = @photo.id
      redirect_to user_photos_path, notice: "Thanks for sharing!"
    else
      render 'new'
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    flash[:notice] = "Photo has been deleted"
    redirect_to root_url
  end

private

  def user_params
    params.require(:photo).permit(:user_id, :avatar).merge(:user_id => current_user.id)
  end
end
