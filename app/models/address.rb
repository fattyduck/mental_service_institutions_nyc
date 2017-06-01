class Address < ApplicationRecord
  belongs_to :institution
  validates :street, presence: true
  validates :city, presence: true
  validates :zip, presence: true
end
