class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :country_of_origin, :age
end
