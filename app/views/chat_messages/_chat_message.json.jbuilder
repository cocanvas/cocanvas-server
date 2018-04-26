json.extract! chat_message, :id, :user_id, :created_at

# json.chat_message created_at.strftime('%l:%M %p')
json.username chat_message.user.username