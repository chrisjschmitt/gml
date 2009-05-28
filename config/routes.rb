ActionController::Routing::Routes.draw do |map|
  map.resources :users

  map.resources :subscriptions
  map.resources :admin_subscriptions

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
    
  #gifts
  # map.with_options :controller => "gifts" do |gifts|
  #   gifts.connect '/gifts',         :action => 'index'
  #   gifts.list    '/list',          :action => 'index'
  #   gifts.destroy '/gift/destroy',  :action => 'destroy'    
  #   gifts.gift    '/gift/edit/:id',  :action => 'edit'
  #   gifts.show    '/gift/show/:id', :action => 'show'
  #   gifts.create  '/gift/create',   :action => 'create'
  #   gifts.sort    '/gift/sort',     :action => 'sort'
  # end  

  #site
  map.with_options :controller => "site" do |site|
    site.connect '/boom', :action => 'boom'
    site.front   '/',     :action => 'front'
  end
  
  #account
  map.with_options :controller => "account" do |account|
    account.connect '/account', :action => 'index'
    account.login   '/login',   :action => 'login'
    account.signup  '/signup',  :action => 'signup'
    account.logout  '/logout',  :action => 'logout'
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

  #messages
  map.with_options :controller => "messages" do |messages|
    messages.inbox   '/inbox',                  :action => 'inbox'
    messages.outbox  '/outbox',                 :action => 'outbox'
    messages.trash   '/trash',                  :action => 'trash'
    messages.connect '/incoming/:id',           :action => 'incoming'
    messages.connect '/outgoing/:id',           :action => 'outgoing'
    messages.connect '/send/message/to/:id',    :action => 'new'
    messages.connect '/reply/to/message/:id',   :action => 'reply'
    messages.connect '/create/message/to/:id',  :action => 'create'
    messages.connect '/destroy/incoming/:id',   :action => 'destroy'
    messages.connect '/undestroy/incoming/:id', :action => 'undestroy'
  end
  
  ### PUBLIC AREAS
  
  #profile
  map.with_options :controller => "profile" do |profile|
    profile.connect '/person/:username', :action => 'user'
    profile.people  '/people',           :action => 'list'
  end
  
  ### ADMIN
  
  #admin_users
  map.with_options :controller => "admin_users" do |admin_users|
    admin_users.admin_users '/admin/users',     :action => 'list'
    admin_users.edit        '/admin/user/:id',  :action => 'edit'
    admin_users.update      '/admin/user/:id',  :action => 'update'
    admin_users.connect     '/admin/user/:id',  :action => 'show'
  end
  
  #admin
  map.with_options :controller => "admin" do |admin|
    admin.admin               '/admin/admin_exchanges',    :action => 'index'
  end

end
