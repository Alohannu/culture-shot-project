class Museum < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :topics
<<<<<<< HEAD
  has_many_attached :photos

  def average
    return 0 if ratings.pluck(:stars).sum.zero?
=======

  def average
    return 0 if ratings.pluck(:stars).sum.zero?

>>>>>>> d4977e4b26947bd83663f9b0ece1804618000e03
    (ratings.pluck(:stars).sum/ratings.size.to_f).round(1)
  end
end
