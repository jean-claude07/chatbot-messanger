require 'facebook/messenger'

include Facebook::Messenger

class Listener
  Facebook::Messenger::Subscriptions.subscribe(
    access_token: ENV['ACCESS_TOKEN'],
    subscribed_fields: [
        'feed', 'mention', 'name', 'picture', 'category', 'description', 'conversations',
        'branded_camera', 'feature_access_list', 'standby',
        'messages', 'messaging_account_linking', 'messaging_checkout_updates',
        'message_echoes', 'message_deliveries', 'messaging_game_plays', 'messaging_optins',
        'messaging_optouts', 'messaging_payments', 'messaging_postbacks',
        'messaging_pre_checkouts', 'message_reads', 'messaging_referrals',
        'messaging_handovers', 'messaging_policy_enforcement',
        'messaging_page_feedback', 'messaging_appointments', 'founded',
        'company_overview', 'mission', 'products', 'general_info', 'leadgen',
        'leadgen_fat', 'location', 'hours', 'parking', 'public_transit',
        'page_about_story', 'phone', 'email', 'website', 'ratings', 'attire',
        'payment_options', 'culinary_team', 'general_manager', 'price_range',
        'awards','hometown', 'current_location', 'bio', 'affiliation', 'birthday',
        'personal_info', 'personal_interests', 'publisher_subscriptions', members,
        'checkins', 'page_upcoming_change', 'page_change_proposal',
        'merchant_review', 'product_review', 'videos', 'live_videos', 'registration',
    ]
  )

  Bot.on :message do |message|
    Bot.deliver({
      recipient: message.sender,
      message: {
        text: 'Uploading your message to skynet.'
      }
    }, access_token: ENV['ACCESS_TOKEN'])
  end
end