class TagsController < ApplicationController
  def index
  end

  def new
    @user = User.find(params[:user_id])
    @photo = Photo.find(params[:photo_id])
    @tag = Tag.new
  end

  def create
    @user = User.find(params[:user_id])
    @photo = Photo.find(params[:photo_id])
    @tag = Tag.create(tag_params)
    if @tag.valid?
      redirect_to user_photo_path(@user, @photo)
    else
      redirect_to new_user_photo_tag_path(@user, @photo)
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash[:notice] = "Tag has been deleted"
    redirect_to root_url
  end

private

  def tag_params
    params.require(:tag).permit(:user_id, :photo_id)
  end
end
