class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat_channel'
  end

  def unsubscribed;
  end

  def create(opts)
    msg = opts['message']
    p msg
    ChatMessage.create(
      content:msg.fetch('content'),
      user_id:msg.fetch('user_id')
    )
  end
end
