json.extract! chat_message, [:id, :content, :user_id, :user.username, :created_at.strftime('%l:%M %p'), :updated_at]

