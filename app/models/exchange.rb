class Exchange < ActiveRecord::Base
  has_many :subscriptions
  has_many :users, :through => :subscriptions
  
  validates_presence_of     :name
  
end
