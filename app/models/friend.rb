class Friend < ApplicationRecord
    has_many :friend_interactions
    has_many :interactions, through: :friend_interactions

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end
