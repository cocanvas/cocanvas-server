json.extract! message, [:id, :content, :user_id, :created_at, :updated_at]
json.url chat_message_url(message, format: :json)
