# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rh_session',
  :secret      => '6d3b86743408b17f49dae8adb3c66b15f435ee5ca0ed610b4be379357835a6932ba2306d5f1756bba61955b3c2ec96b5c9fe0ff1b315f7737cd4770b5baf0399'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
