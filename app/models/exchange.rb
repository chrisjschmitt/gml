class Exchange < ActiveRecord::Base
  has_many :subscriptions
  has_many :users, :through => :subscriptions
  
  validates_presence_of     :name
  
  def new_email_attributes=(email_attributes) 
    email_attributes.each do |attributes| 
      users.build(attributes) 
    end 
  end 
  
  after_update :save_emails 
  after_create :send_email_invitations
  
  def existing_email_attributes=(email_attributes) 
    users.reject(&:new_record?).each do |user| 
      attributes = email_attributes[user.id.to_s] 
      if attributes 
        user.attributes = attributes 
      else 
        user.delete(task) 
      end 
    end 
  end
   
  def save_emails
  users.each do |user| 
    user.save(false) 
    end 
  end 
  
  def send_email_invitations
    users.each do |user|
      ::ClearanceMailer.deliver_confirmation user
    end
  end
  
end
