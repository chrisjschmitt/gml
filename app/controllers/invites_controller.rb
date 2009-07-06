class InvitesController < ApplicationController

  def index
    # lists gift exchanges that the current_user is a member of
    @exchanges = current_user.exchanges.find(:all)
  end
  
  def show
    # lists the status of the invitations for the selected gift exchange 
    @exchange = Exchange.find(params[:id])
    @exchange_users = @exchange.users
  end
  
  def new
    # calls a form to create a new gift exchange and invite members
    @exchange = Exchange.new
    @exchange.users.build
  end
  
  def create
    # create action creates a new exchange and invites members
    @exchange = Exchange.new(params[:exchange])
    if @exchange.save
      Subscription.create(:user_id => current_user.id, :exchange_id => @exchange.id)
      flash[:notice] = "Invitations being sent..."
      redirect_to invites_path
    else
      render :action => 'new'
    end
  end

  def edit
    # allows current_user to add or remove members to an existing exchange
    @exchange = Exchange.find(params[:id])
  end

  def update
    # update action adds or removes members from an existing gift exchange
    params[:exchange][:existing_email_attributes] ||= {}

    @exchange = Exchange.find(params[:id])
    if @exchange.update_attributes(params[:exchange])
      flash[:notice] = "Successfully updated gift exchange members."
      redirect_to invites_path(@exchange)
    else
      render :action => 'edit'
    end
  end

end
  