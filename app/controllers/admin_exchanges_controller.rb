class AdminExchangesController < ApplicationController
  # GET /admin_exchanges
  # GET /admin_exchanges.xml
  def index
    @title = "Administer"
    @user = current_user
    @exchanges = @user.exchanges.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @exchanges }
    end
  end

  # GET /admin_exchanges/1
  # GET /admin_exchanges/1.xml
  def show
    @exchange = Exchange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @exchange }
    end
  end

  # GET /admin_exchanges/new
  # GET /admin_exchanges/new.xml
  def new
    @exchange = Exchange.new
    @fieldset_name = "Test1"

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @exchange }
    end
  end

  # GET /admin_exchanges/1/edit
  def edit
    @exchange = Exchange.find(params[:id])
  end

  # POST /admin_exchanges
  # POST /admin_exchanges.xml
  def create
    @exchange = Exchange.new(params[:exchange])

    respond_to do |format|
      if @exchange.save
        flash[:notice] = 'Exchange was successfully created.'
        format.html { redirect_to(@exchange) }
        format.xml  { render :xml => @exchange, :status => :created, :location => @exchange }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @exchange.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin_exchanges/1
  # PUT /admin_exchanges/1.xml
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

  # DELETE /admin_exchanges/1
  # DELETE /admin_exchanges/1.xml
  def destroy
    @exchange = Exchange.find(params[:id])
    @exchange.destroy

    respond_to do |format|
      format.html { redirect_to(exchanges_url) }
      format.xml  { head :ok }
    end
  end
end
