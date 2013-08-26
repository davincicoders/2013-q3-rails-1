# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
App::Application.config.secret_key_base = Rails.env.production? ? ENV['SESSION_SECRET'] : 'c74cfa70f8ee6368b9f4eba74a267e0d3098c89ac5a6b337402ee0e200a68feb9f4d6860c51b62bfb5ea7cc394b1f0d3432038a7de85d219bcd07426a77c36a7'
