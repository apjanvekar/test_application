# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_surveysays_session',
  :secret      => 'f6ffb883d1a72ab769a54f1bbb837c6c59b84c41c7def36529bc209eb143200e6db28157b10a2348e00360eb497c20a542fc70f8cc5320419099e43358fff5e9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
