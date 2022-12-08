class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :country_of_origin, :age, :songs
  # has_many :songs
end
