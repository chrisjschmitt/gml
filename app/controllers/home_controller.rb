class HomeController < ApplicationController
  
  prepend_before_filter :login_required
  
  def index
    @title = "Welcome"
    @user = current_user
    @gifts = @user.gifts.count
    @exchanges = @user.exchanges.find(:all)
    
#    list = user.gift_lists.find(:first)
#    @total_orders = list.gift_items.count
  end
  
end
