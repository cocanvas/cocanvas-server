class MessageCreationEventBroadcastJob < ApplicationJob
  queue_as :default

  def perform(msg)
    ActionCable
      .server
      .broadcast(
        'chat_channel',
        # user_id: msg.user_id,
        username: User.find_by_id(msg.user_id).username,
        content: msg.content,
        created_at: msg.created_at.strftime('%H:%M')
      )
  end
end
