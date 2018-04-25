json.extract! chat_message, [:id, :content, :user_id, :created_at.strftime('%l:%M %p'), :updated_at]
json.url chat_message_url(chat_message, format: :json)
