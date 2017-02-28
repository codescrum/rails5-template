# Be sure to restart your server when you modify this file.
session_store_key_name = ENV['SESSION_STORE_KEY_NAME']

valid_session_store_key_name = session_store_key_name.is_a?(String) && session_store_key_name.present?

raise "Please define a cookie_store key at `config/initializers/session_store.rb` (or in your .env file under SESSION_STORE_KEY_NAME)" unless valid_session_store_key_name

# Use a different cookie for each environment
session_store_key = "_#{session_store_key_name}-#{Rails.env}"

Rails.application.config.session_store :cookie_store, key: session_store_key
