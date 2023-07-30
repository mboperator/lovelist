class Interaction < ApplicationRecord
    has_many :friend_interactions
    has_many :friends, through: :friend_interactions
end
