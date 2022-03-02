class Chatroom < ApplicationRecord
  belongs_to :museum, dependent: :destroy
  has_many :messages
end
