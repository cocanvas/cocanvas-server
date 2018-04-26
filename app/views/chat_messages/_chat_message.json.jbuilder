json.extract! chat_message, :id, :user, :user_id, :created_at.strftime('%l:%M %p')

# json.created_at.strftime('%l:%M %p')
# json.user chat_message.user.username