class Character < ApplicationRecord
    belongs_to :player
    belongs_to :adventure
end
