class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :year_of_release
  # has_one :artist
end
