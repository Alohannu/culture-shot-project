class Museum < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :museums_topics
  has_many :topics, through: :museums_topics
  has_many_attached :photos
  has_one :chatroom
  serialize :hours
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def average
    return 0 if ratings.pluck(:stars).sum.zero?

    (ratings.pluck(:stars).sum/ratings.size.to_f).round(1)
  end

  def open(museum)
    if museum.hours[:"#{Time.now.day}"][:start].to_i < Time.now.hour && Time.now.hour < museum.hours[:"#{Time.now.day}"][:end].to_i
      return true
    end
  end
end
