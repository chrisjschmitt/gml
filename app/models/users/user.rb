require 'digest/sha1'
class User < ActiveRecord::Base
  has_many :gifts, :order => :position
  has_many :subscriptions
  has_many :exchanges, :through => :subscriptions
  
  # Virtual attribute for the unencrypted password
  attr_accessor :password
  
  attr_accessor :exchange_ids
  after_save :update_exchanges

  validates_presence_of     :username
  validates_presence_of     :password,                   :if => :password_required?
  validates_presence_of     :password_confirmation,      :if => :password_required?
  validates_length_of       :password, :within => 4..40, :if => :password_required?
  validates_confirmation_of :password,                   :if => :password_required?
  validates_length_of       :username, :within => 3..40
  validates_length_of       :email,    :within => 3..100, :allow_nil => true, :allow_blank => true
  validates_uniqueness_of   :username, :case_sensitive => false
  before_save :encrypt_password
  
  has_one :preference_store

  # Authenticates a user by their username and unencrypted password.  Returns the user or nil.
  def self.authenticate(username, password)
    u = find_by_username(username) # need to get the salt
    u && u.authenticated?(password) ? u : nil
  end

  # Encrypts some data with the salt.
  def self.encrypt(password, salt)
    Digest::SHA1.hexdigest("--#{salt}--#{password}--")
  end

  # Encrypts the password with the user salt
  def encrypt(password)
    self.class.encrypt(password, salt)
  end

  def authenticated?(password)
    crypted_password == encrypt(password)
  end
  
  ###
  
  def is?(user)
    (self.id == user.id)
  end
  
  def admin?
    false #subclasses can override
  end
  
  def full_name
    username
  end
  

  #after_save callback to handle user subscription to exchange_ids
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

  protected
  
    # before filter 
    def encrypt_password
      return if password.blank?
      self.salt = Digest::SHA1.hexdigest("--#{Time.now.to_s}--#{username}--") if new_record?
      self.crypted_password = encrypt(password)
    end
    
    def password_required?
      crypted_password.blank? || !password.blank?
    end
    
end
