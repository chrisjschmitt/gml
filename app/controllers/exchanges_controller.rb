class ExchangesController < ApplicationController
  # GET /exchanges
  # GET /exchanges.xml
  def index
    @user = current_user
    @exchanges = @user.exchanges.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @exchanges }
      format.json { render :layout => false, :json => @exchanges.to_json }
    end
  end

  # GET /exchanges/1
  # GET /exchanges/1.xml
  def show
    @exchange = Exchange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @exchange }
      format.json { render :layout => false, :json => @exchange.to_json }
    end
  end

  # GET /exchanges/new
  # GET /exchanges/new.xml
  def new
    @exchange = Exchange.new
    @exchange.users.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @exchange }
    end
  end

  # GET /exchanges/1/edit
  def edit
    @exchange = Exchange.find(params[:id])
  end

  # POST /exchanges
  # POST /exchanges.xml
  def create
    @exchange = Exchange.new(params[:exchange])
    # Save exchange and subscribe current_user to newly created exchange
    respond_to do |format|
      if @exchange.save
        Subscription.create(:user_id => current_user.id, :exchange_id => @exchange.id)
#        subscriptions = current_user.exchanges.collect(&:id) + [@exchange.id]
#        current_user.exchange_ids = params[:user][:exchange_ids] ||= [] # Sets up user subscriptions
#        current_user.update_attributes(:exchange_ids => subscriptions)
        flash[:notice] = 'Exchange was successfully created.'
        format.html { redirect_to(@exchange) }
        format.xml  { render :xml => @exchange, :status => :created, :location => @exchange }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @exchange.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /exchanges/1
  # PUT /exchanges/1.xml
  def update
    @exchange = Exchange.find(params[:id])

    respond_to do |format|
      if @exchange.update_attributes(params[:exchange])
        flash[:notice] = 'Exchange was successfully updated.'
        format.html { redirect_to(@exchange) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @exchange.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  # show members of an exchange except for current_user
  def show_members
    @exchange = Exchange.find(params[:id])
    @members = @exchange.users
    @exchanges = current_user.exchanges.find(:all)
  end
  
  # DELETE /exchanges/1
  # DELETE /exchanges/1.xml
  def destroy
    @exchange = Exchange.find(params[:id])
    @exchange.destroy

    respond_to do |format|
      format.html { redirect_to(exchanges_url) }
      format.xml  { head :ok }
    end
  end
end
