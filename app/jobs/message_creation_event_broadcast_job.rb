class MessageCreationEventBroadcastJob < ApplicationJob
  queue_as :default

  def perform(msg)
    ActionCable
      .server
      .broadcast(
        'chat_channel',
        # user_id: msg.user_id,
        username: msg.user.username,
        content: msg.content,
        created_at: msg.created_at.strftime('%H:%M:%S')
      )
  end
end
