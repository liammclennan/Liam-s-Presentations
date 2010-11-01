# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_IronRails_session',
  :secret      => '2a1daa86855db56499e0ae02cfb806550e483c7e662d5d1935a3d4706af1aba0fcd624e976ed9bf7d5c91ec04cec82bf320d64fbdc383717ad6bbd91f96ceccb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
