# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
App::Application.config.secret_key_base = Rails.env.production? ? ENV['SESSION_SECRET'] : '2872822c4668a55e1dc34b8981d2d563d5be7d707cbfca0b1587db04737d490480de0e58437007d1f1e43b2d9b06f1b65a5da6be5f0b5f07abe87ac3374a1098'
