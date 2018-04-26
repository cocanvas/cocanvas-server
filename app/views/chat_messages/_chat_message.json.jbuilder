json.extract! chat_message, :id, :user_id, :content, :created_at

# json.created_at chat_message.created_at.strftime('%l:%M %p')
# json.created_at_unformatted chat_message.created_at#.strftime('%l:%M %p')
json.username chat_message.user.username