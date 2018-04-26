json.extract! chat_message, [:id, :content, :user_id, :created_at]
json.created_at.strftime('%l:%M %p')
json.user chat_message.user.username