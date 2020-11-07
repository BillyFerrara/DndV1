class Adventure < ApplicationRecord
    has_many: characters
    has_many: players, through: :characters
end
