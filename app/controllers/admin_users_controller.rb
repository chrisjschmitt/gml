class AdminUsersController < ApplicationController
  
#  before_filter :admin_login_required
  
  def index
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
    @exchanges = current_user.exchanges.find(:all)
  end
  
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @User.update_attributes(params[:user])
        flash[:notice] = 'User was successfully updated.'
        format.html { redirect_to(@user) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
  
end
