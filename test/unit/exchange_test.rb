require 'test_helper'

class ExchangeTest < ActiveSupport::TestCase

  fixtures :users, :exchanges
  
  def test_fixtures
    assert users(:chris).valid?
    assert users(:jonny).valid?
    assert exchanges(:schmitts).valid?
    assert exchanges(:jones).valid?
  end
  
  def test_should_create_exchange
    assert_difference Exchange, :count do
      exchange = create_exchange
      assert !exchange.new_record?, "#{exchange.errors.full_messages.to_sentence}"
    end
  end
  
  def test_should_require_exchange_name
    assert_no_difference Exchange, :count do
    exchange = create_exchange(:name => nil)
    assert exchange.errors.on(:name)
    end
  end

  def test_current_user_in_exchange
    
    assert false
  end
  
  protected
  
    def create_exchange(options = {})
      Exchange.create({ :name => 'quire', :description => 'This is a new exchange' }.merge(options))
    end
  
end
