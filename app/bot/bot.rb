require 'facebook/messenger'

include Facebook::Messenger

SUBSCRIBED_PARAMS = [ 'messages', 'message_echoes', 'message_deliveries', 'messaging_optins', 'leadgen' ]

Facebook::Messenger::Subscriptions.subscribe(
  access_token: ENV["ACCESS_TOKEN"], subscribed_fields: SUBSCRIBED_PARAMS
)

Bot.on :message do |message| 
    message.reply(text: "bonjour")
end