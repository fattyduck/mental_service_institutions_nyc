class InstitutionsSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :addresses
  has_many :geographic_informations
end
