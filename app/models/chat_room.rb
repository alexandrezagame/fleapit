class ChatRoom < ApplicationRecord
  has_many :messages, dependent: :destroy
  # belongs_to :match
  # validates :match_id, uniqueness: :true
  # first i need to add match_id to the Matches table
end
