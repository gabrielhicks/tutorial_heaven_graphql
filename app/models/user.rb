class User < ApplicationRecord
    has_secure_password

    has_many :comments
    has_many :messages
    has_many :posts

    validates :username, uniqueness: { case_sensitive: false }
    validates :email, presence: true, uniqueness: true
end