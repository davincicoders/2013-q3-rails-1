# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
App::Application.config.secret_key_base = Rails.env.production? ? ENV['SESSION_SECRET'] : '8bdcba027d0110f45d45f9e84144bc6cfd354657d5cbd27fcba172cb2128ef716160a9f702d125fcea64f09d9ac0af99576a1463c0b246a2d84790c4887cf867'
