class User < ActiveRecord::Base
  # Most of the validation is done in the Clearance engine located in vendor/gems/lib/extensions/user.rb
  include Clearance::User
  
  # GML specific validations
  validates_presence_of     :username
  validates_length_of       :username, :within => 3..40
  
  has_many :gifts, :order => :position
  has_many :subscriptions
  has_many :exchanges, :through => :subscriptions
  has_one :preference_store
  
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
  
end
