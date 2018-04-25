json.extract! chat_message, [:id, :content, :user_id, {username: User.find_by_id(msg.user_id).username}, {:created_at => created)at.strftime('%l:%M %p')}, :updated_at]
json.url chat_message_url(chat_message, format: :json)
