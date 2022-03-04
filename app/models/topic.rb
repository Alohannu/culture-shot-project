class Topic < ApplicationRecord
  has_many :users_topics
  has_many :museums_topics
  has_many :museums, through: :museums_topics
end
