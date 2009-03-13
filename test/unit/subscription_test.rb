require 'test_helper'

class SubscriptionTest < ActiveSupport::TestCase
  fixtures :users, :exchanges
  
  def test_fixtures
    assert users(:chris).valid?
    assert users(:jonny).valid?
    assert exchanges(:schmitts).valid?
    assert exchanges(:jones).valid?
  end
  
  def test_subscription_to_2_exchanges
    user1 = User.find_by_username('chris')
    user1.update_attributes(:exchange_ids => ['1','2'])
    user1_subs = user1.subscriptions
    assert_equal 2, user1_subs.size    
    
    user2 = User.find_by_username('jonny')
    user2.update_attributes(:exchange_ids => ['2','3'])
    user2_subs = user2.subscriptions
    assert_equal 2, user2_subs.size        
  end
  
  def test_user_subscribe_to_valid_exchange_only
    user1 = User.find_by_username('chris')
    user1.update_attributes(:exchange_ids => ['1','2'])
    debugger    
  end
  
  def test_chris_in_two_exchanges
    user = User.find_by_username('chris')
    xchanges = user.subscriptions.find(:all)
    assert true
  end
  
end
