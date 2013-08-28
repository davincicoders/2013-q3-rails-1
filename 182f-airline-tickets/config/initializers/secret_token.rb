# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
App::Application.config.secret_key_base = Rails.env.production? ? ENV['SESSION_SECRET'] : 'c411bca50731e36452ce5d8eeef19153a1e59487eb2440b467ff22aa342bbf2547f8db2891a51380953201c19740304939937df08b7ad1c82593fc7566d89a16'
