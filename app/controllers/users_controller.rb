class UsersController < ApplicationController
  before_filter :authorize, only: [:edit, :update, :destroy]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @photos = @user.photos
    @tags = Tag.where(:user_id => @user.id)
    @tagged_photos = []
    @tags.each do |tag|
      @tagged_photos << Photo.where(:id => tag.photo_id)
    end
    @likes = Like.where(:user_id => @user.id)
    @liked_photos = []
    @likes.each do |like|
      @liked_photos << Photo.where(:id => like.photo_id)
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(users_params)
    if @user.valid?
      flash[:notice] = "#{@user.name} has been updated"
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "#{@user.name} has been deleted"
    redirect_to root_url
  end

private
  def users_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
