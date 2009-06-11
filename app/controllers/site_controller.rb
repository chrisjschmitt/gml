class SiteController < ApplicationController

  skip_before_filter :launch_required

  def boom
    raise "boom!"
  end

  def front
	if signed_in?
		redirect_to :controller => :gifts, :status => 303
	end
  end

end
