# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_daddy_session',
  :secret      => 'd4588f08098b52fc87f39d07b19ad4eb5db7b36ead947a68c0710a5e08ac8b059b8963e89059dd3d470efde6da69be748d07b092ee3da52da79431df6633fc67'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
