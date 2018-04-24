<<<<<<< HEAD
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

=======
>>>>>>> ce041840f91cf7b7e4c08d2fe3425869e5eb325d
class ChatMessage < ApplicationRecord
  belongs_to :user
  after_create_commit do
    MessageCreationEventBroadcastJob.perform_later(self)
  end
end
