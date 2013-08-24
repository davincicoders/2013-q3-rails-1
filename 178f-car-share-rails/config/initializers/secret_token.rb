# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
App::Application.config.secret_key_base =
  Rails.env.production? ? ENV['SESSION_SECRET'] : 'b5c817275a0097c060f68feb0e0630483098d4cc2ef7e056c09dfc4bf8c66e6422f1653778190e37899676fa6cffb9535b91a5839f3315f542057d3fb4f8fa0a'
