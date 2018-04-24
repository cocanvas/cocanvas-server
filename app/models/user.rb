# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_many :coordinates
  has_many :messages
  has_secure_password
  validates :username, :presence => true, :uniqueness => true
  validates :password_digest, presence: true, confirmation: true
end
