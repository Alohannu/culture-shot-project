class Museum < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :topics

  def average
    return 0 if ratings.pluck(:stars).sum.zero?

    (ratings.pluck(:stars).sum/ratings.size.to_f).round(1)
  end
end
