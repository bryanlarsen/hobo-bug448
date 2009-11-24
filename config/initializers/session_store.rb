# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_yo_session',
  :secret      => 'f917ce9e5ef6f23b0ab49ff38ebfbd077db5e0d653dae8c6d3d9af9ce3e0a5a742e3879c05d8121c75de5aeb06b97f555dd78dc2455f1a2a220852b767b8142b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
