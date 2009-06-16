ActionController::Routing::Routes.draw do |map|

  map.resources :admin_users
  map.resources :subscriptions
  map.resources :admin_subscriptions
  map.resources :invites

  map.resources :exchanges
  map.with_options :controller => "exchanges" do |site|
    site.members '/members/:id', :action => 'show_members'
  end
  
  
  map.resources :admin_exchanges

  map.resources :gifts
  map.resources :gifts,
    :collection => { :sort => :post } # Required for sortable_element
  map.with_options :controller => "gifts" do |gift|
    gift.connect  '/wishlist/:id',      :action => 'show_wishlist'
    gift.connect  '/purchased/:id',     :action => 'purchased'
    gift.connect  '/undo_purchase/:id', :action => 'undo_purchase'
    gift.gift_undo_purchase '/undo_purchase/:id', :action => 'undo_purchase', :method => 'put'
  end

  #site
  map.with_options :controller => "site" do |site|
    site.connect '/boom', :action => 'boom'
    site.front   '/',     :action => 'front'
  end

  #settings
  map.with_options :controller => "settings" do |settings|
    settings.preferences     '/settings/preferences',        :action => 'preferences'
    settings.connect         '/settings/update/preferences', :action => 'update_preferences'
    settings.change_password '/settings/change/password',    :action => 'change_password'
    settings.connect         '/settings/update/password',    :action => 'update_password'
  end
  
  #home
  map.with_options :controller => "gifts" do |home|
    home.home '/home', :action => 'index'
  end

  map.root :controller => '/home', :action => 'index'

end
