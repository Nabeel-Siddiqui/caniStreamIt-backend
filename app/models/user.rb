class User < ApplicationRecord
    has_many :favorites

    has_secure_password
    validates :username, uniqueness: true
end
