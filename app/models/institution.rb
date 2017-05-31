class Institution < ApplicationRecord
  has_many :addresses
  has_many :geographic_informations

  def cities
    self.addresses.map { |address| address.city.capitalize }.uniq
  end
end
