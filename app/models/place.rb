class Place < ApplicationRecord
  belongs_to :user
  validates :name, length: {minimum: 4}, presence: true
  validates :address, presence: true
  validates :description, presence: true
  geocoded_by :address
  after_validation :geocode
end
