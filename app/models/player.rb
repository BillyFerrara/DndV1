class Player < ApplicationRecord
    has_secure_password

    has_many :characters
    has_many :adventures, through: :characters
end
