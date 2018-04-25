
# == Schema Information
#
# Table name: chat_messages
#
#  id         :integer          not null, primary key
#  content    :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ChatMessage < ApplicationRecord
  belongs_to :user
  after_create_commit do
    MessageCreationEventBroadcastJob.perform_later(self)
  end
end
