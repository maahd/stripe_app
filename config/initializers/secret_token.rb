# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
StripeApp::Application.config.secret_key_base = '5dd01e316e92dad993a0dc83bd982436a103ca53b99afcb2148a5648489056197bb05ddf389e4426cbbe742d8ebcf6f59d37fd6acc66df65ddb46f7f9be4ce51'
