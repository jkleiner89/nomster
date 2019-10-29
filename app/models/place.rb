class Place < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  geocoded_by :address
  after_validation :geocode
end
