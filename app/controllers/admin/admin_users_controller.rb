class AdminUsersController < ApplicationController
  
  before_filter :admin_login_required
  
  def list
    @users = User.find(:all, :order => "id DESC")
    @title = "Users"
  end
  
  def show
    @user = User.find(params[:id])
    @title = "User "+@user.username
  end
  
  # GET /gifts/1/edit
  def edit
    @user = User.find(params[:id])
  end
  
end
