# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_iworkedwith_session',
  :secret      => 'f0002ed4ca80a263d171ef7359d3d9c34c9f4e95442a4585efccc3748e30839459c066b798fe1ae72cf6fa0814c53f6004a4683e9de47cae9af88bb51ca66cd0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
