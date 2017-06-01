class Institution < ApplicationRecord
  has_many :addresses
  has_many :geographic_informations
  validates :name, presence: true

  def cities
    self.addresses.map { |address| address.city.capitalize }.uniq
    #list all unique cities
    #capitalized to prevent listing same city twice because of different case
  end
end
