json.extract! chat_message, :id, :user, :user_id

json.chat_message created_at.strftime('%l:%M %p')
# json.user chat_message.user.username