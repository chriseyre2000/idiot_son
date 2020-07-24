import Config

config :twittex, 
  token: "twitter_token",
  token_secret: "twitter_token_secret",
  consumer_key: "twitter_consumer_key", 
  consumer_secret: "twitter_consumer_secret"

import_config "#{Mix.env()}.exs"