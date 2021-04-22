require 'dotenv'# Appelle la gem Dotenv
require 'twitter'
require 'pry'

Dotenv.load('../.env') 

def login_twitter
 # quelques lignes qui appellent les clés d'API de ton fichier .env
 client = Twitter::REST::Client.new do |config|
   config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
   config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
   config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
   config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  end
  return client
end

def twitter(client)
# ligne qui permet de tweeter sur ton compte
client.update('Première fois que je tweet "volontairement"')
end