class AdminController < ApplicationController
  
  before_filter :admin_login_required
  
  def home
  end
  
end
