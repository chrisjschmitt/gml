module ExchangesHelper
  
  def add_email_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :email, :partial => 'email', :object => User.new
    end
  end
  
end
