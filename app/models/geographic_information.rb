class GeographicInformation < ApplicationRecord
  belongs_to :institution
  validates :longitude, presence: true
  validates :latitude, presence: true
end
