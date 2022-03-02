class Museum < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :topics
  has_many_attached :photo

end
