# json.array! @latest_coords, partial: 'coordinates/coordinate', as: :coordinate
json.array! @latest_messages, partial: 'messages/message', as: :chat_message
