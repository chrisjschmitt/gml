class InvitesController < ApplicationController

  def index
    @invites = current_user.exchanges.find(:all) # Find all user's exchanges for now
  end
  
  def show
    @exchange = exchange.find(params[:id]) # show exchange details for now
  end
  
  def new
    @exchange = Exchange.new
    @exchange.users.build
  end
  
  def create
    @exchange = Exchange.new(params[:exchange])
    if @exchange.save
      flash[:notice] = "Successfully created gift exchange and invitations."
      redirect_to invites_path
    else
      render :action => 'new'
    end
  end

  def edit
    @exchange = Exchange.find(params[:id])
  end

  def update
    params[:exchange][:existing_email_attributes] ||= {}

    @exchange = Exchange.find(params[:id])
    if @exchange.update_attributes(params[:exchange])
      flash[:notice] = "Successfully updated gift exchange and invitations."
      redirect_to invites_path(@exchange)
    else
      render :action => 'edit'
    end
  end


end
  