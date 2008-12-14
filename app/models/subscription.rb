class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :exchange
  
  def subscribe(user, exchange)
    # add code to subscribe a user to an exchange
  end
  
  def unsubscribe(user, exchange)
    # add code to subscribe a user to an exchange
  end
    
end
