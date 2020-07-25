# IdiotSon

This is a quick utility designed to allow me to keep up with the Idiot Son thread of @archer_rs on twitter.


You need to register a twitter app here: https://developer.twitter.com/en/apps

From this you can generate the required keys

I have not committed the dev.exs, you need to build your own


It looks like:

```
import Config

config :twittex, 
  token: "[INSERT TOKEN]",
  token_secret: "[INSERT TOKEN_SECRET]]",
  consumer_key: "[INSERT CONSUMER_KEY]", 
  consumer_secret: "[INSERT CONSUMER_SECRET]]"
```

Current usage:

iex -S mix

IdiotSon.fetch 20

Can also be run as:

mix latest
