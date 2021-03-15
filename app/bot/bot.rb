require 'facebook/messenger'

include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(
  access_token: ENV["ACCESS_TOKEN"]
)

Bot.on :message do |message| 
    if message.text.include? "bonjour"
        message.reply(text: "bonjour, qu'est ce que je peut faire pour vous?")
    else
        message.reply(text: "bonjour")
    end
end