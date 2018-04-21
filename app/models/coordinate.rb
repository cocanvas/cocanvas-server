# == Schema Information
#
# Table name: coordinates
#
#  id         :integer          not null, primary key
#  colour     :string
#  x          :integer
#  y          :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Coordinate < ApplicationRecord
  belongs_to :user
end
