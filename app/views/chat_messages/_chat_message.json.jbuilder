json.extract! chat_message, :id, :user.username, :user_id, :created_at

# json.chat_message created_at.strftime('%l:%M %p')
# json.user chat_message.user.username