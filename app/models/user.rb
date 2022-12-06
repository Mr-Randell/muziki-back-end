class User < ApplicationRecord
    has_secure_password
    
    validates :name, presence: true

    validates :email, presence: true, uniqueness: true

    has_many :playists
    has_many :songs, through: :playists
end
