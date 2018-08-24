class AdminUsersController < ApplicationController
  def index
  	@users = AdminUser.all
  end

  def show
    @user = AdminUser.find(params[:id])
    @name = @user.name
    @posts = @user.posts
  end

end