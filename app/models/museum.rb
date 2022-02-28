class Museum < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :topics

  belongs_to :chatroom, dependent: :destroy
end
