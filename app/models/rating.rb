class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :museum

  validates :comment, :stars, :title, presence: true
end
