# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gml3_session',
  :secret      => '4ec37f1c31b7831ef62a0a1bc2e08bf7d5be00f56a6be60314c22f64a3655e1c12fb668c71281c56afab5d6ee3c39edbb4f6a24a1ac6dc34c26e3cf500fb2ee9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
