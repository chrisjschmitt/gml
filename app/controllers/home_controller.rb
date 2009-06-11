class HomeController < ApplicationController
  
  prepend_before_filter :signed_in?
  
  def index
    @title = "Welcome"
    @user = current_user
    @gifts = @user.gifts
    @gift  = Gift.new
    @exchanges = @user.exchanges.find(:all)
    
#    list = user.gift_lists.find(:first)
#    @total_orders = list.gift_items.count
  end
  
end
