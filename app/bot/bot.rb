require 'facebook/messenger'

include Facebook::Messenger

SUBSCRIBED_PARAMS = [ 'messages']

Facebook::Messenger::Subscriptions.subscribe(
  access_token: ENV["ACCESS_TOKEN"], subscribed_fields: SUBSCRIBED_PARAMS
)

Bot.on :message do |message| 
    message.reply(text: "bonjour")
end