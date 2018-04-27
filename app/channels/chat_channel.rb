class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat_channel'
  end

  def unsubscribed;
  end

  def create(opts)
    msg = opts['message']
    ChatMessage.create(
      content: msg.fetch('content'),
      user_id: msg.fetch('user_id')
    )
    oldestMsg = ChatMessage.first
    oldestMsg.destroy
  end
end
