# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mySmallBusiness_session',
  :secret      => '3cda8bbb901f9ed4bce76af21c851f13ab6e34792a1ebd96d11dec66083c8fc7505681a2bd37af002dd1b32211c0788624e28e41f7d644f3d62acd73e2087c07'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
