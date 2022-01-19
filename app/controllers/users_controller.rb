class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = User.three_most_recent_posts(params[:id])
  end
end
