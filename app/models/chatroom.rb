class Chatroom < ApplicationRecord
  belongs_to :museum, dependent: :destroy
end
