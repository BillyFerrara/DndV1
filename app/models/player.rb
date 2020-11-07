class Player < ApplicationRecord
    has_many :characters
    has_many :adventures, through: :characters
end
