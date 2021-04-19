class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
    @post_blogs = @user.post_blogs
  end

  def edit
  end

  def update
  end
end
