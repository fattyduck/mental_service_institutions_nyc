class AddressSerializer < ActiveModel::Serializer
  attributes :street, :city, :zip
end
