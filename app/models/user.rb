class User < ActiveRecord::Base
  # Most of the validation is done in the Clearance engine located in vendor/gems/lib/extensions/user.rb
  include Clearance::User
  
  # GML specific validations
#  validates_presence_of     :username
#  validates_length_of       :username, :within => 3..40
  
  has_many :gifts, :order => :position
  has_many :subscriptions
  has_many :exchanges, :through => :subscriptions
  has_one :preference_store
  
  # Enables user subscriptions to selected exchanges
  attr_accessor :exchange_ids
  after_save :update_exchanges
  
  # Adds username to the Clearance user model as an accessible attribute
  module AttrAccessible
    def self.included(model)
      model.class_eval do
        attr_accessible :username
      end
    end
  end
  

  def admin?
    false #subclasses can override
  end
  
  def full_name
    username
  end
  
  # after_save callback to handle user subscription to exchange_ids
  def update_exchanges
    unless exchange_ids.nil?
      self.subscriptions.each do |m|
        m.destroy unless exchange_ids.include?(m.exchange_id.to_s)
        exchange_ids.delete(m.exchange_id.to_s)
      end
      exchange_ids.each do |g|
        self.subscriptions.create(:exchange_id => g) unless g.blank?
      end
      reload
      self.exchange_ids = nil
    end
  end
  
  
end
