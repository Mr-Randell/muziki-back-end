class User < ApplicationRecord
    has_secure_password
    
    validates :name, presence: true

    validates :email, presence: true, uniqueness: true

    has_many :playlists, dependent: :destroy

    has_many :songs, through: :playlists
end
