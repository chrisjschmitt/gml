class GiftsController < ApplicationController
  # GET /gifts
  # GET /gifts.xml
  def index
    @user = current_user
    @gift = Gift.new    
    @gifts = @user.gifts.find(:all)
    @exchanges = @user.exchanges.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gifts }
      format.json { render :layout => false, :json => @gifts.to_json }
    end
  end

  # GET /gifts/1
  # GET /gifts/1.xml
  def show
    @gift = Gift.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gift }
      format.json { render :layout => false, :json => @gift.to_json }
    end
  end

  # GET /gifts/new
  # GET /gifts/new.xml
  def new
    @gift = Gift.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gift }
    end
  end

  # GET /gifts/1/edit
  def edit
    @gift = Gift.find(params[:id])
  end

  # POST /gifts
  # POST /gifts.xml
  def create
    @user = current_user
    @gift = @user.gifts.create(params[:gift])

    respond_to do |format|
      if @gift.save
        flash[:notice] = 'Gift idea was successfully added.'
        format.html { redirect_to :action => :index }
        format.xml  { render :xml => @gift, :status => :created, :location => @gift }
	format.json { render :json => @gift.to_json, :status => :created }
      else
	format.json { render :json => @gift.to_json }
        format.html { render :action => "new" }
        format.xml  { render :xml => @gift.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gifts/1
  # PUT /gifts/1.xml
  def update
    @gift = Gift.find(params[:id])

    respond_to do |format|
      if @gift.update_attributes(params[:gift])
        flash[:notice] = 'Gift was successfully updated.'
        format.html { redirect_to(@gift) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gift.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gifts/1
  # DELETE /gifts/1.xml
  def destroy
    @gift = Gift.find(params[:id])
    @gift.destroy

    respond_to do |format|
      format.html { redirect_to(:action => :index) }
      format.xml  { head :ok }
    end
  end
  
  def show_wishlist
    @member = User.find(params[:id])
    @exchanges = current_user.exchanges.find(:all)
    @wanted_items = @member.gifts.find(:all, :conditions => ["purchased=?", false])
    @purchased_items = @member.gifts.find(:all, :conditions => ["purchased=?", true])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wanted_items }
      format.json { render :layout => false, :json => @wanted_items.to_json }
    end
  end
  
  def purchased
    # mark items as purchased and move to below purchased header
    member = Gift.find(params[:gifts_id])[0].user                               # find the user for this gift list
    Gift.update_all(["purchase_date=?", Time.now],  :id => params[:gifts_id])   # should be able to do next three lines in one statement
    Gift.update_all(["purchased=?", true],          :id => params[:gifts_id])
    Gift.update_all(["purchaser_id=?", member.id],  :id => params[:gifts_id])
    redirect_to :action => :show_wishlist,          :id => member.id
  end

  def undo_purchase
    Gift.update_all(["purchase_date=?", Time.now],  :id => params[:id])
    Gift.update_all(["purchased=?", false],         :id => params[:id])
    member = Gift.find(params[:id]).user
    redirect_to :action => :show_wishlist, :id => member.id
  end

  # Fancy stuff
  def sort
  #  @gifts = UserGiftList.find(params[:id])
    user = current_user
    gifts = user.gifts.find(:all)
    gifts.each do |gift|
     gift.position = params['gift-list'].index(gift.id.to_s) + 1
      gift.save
    end
   render :nothing => true
  end
                
end
