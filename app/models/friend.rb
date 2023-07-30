class Friend < ApplicationRecord
    has_many :friend_interactions
    has_many :interactions, through: :friend_interactions
end
