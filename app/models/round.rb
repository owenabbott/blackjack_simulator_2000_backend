class Round < ApplicationRecord
    has_one :bet
    has_one :user, through: :bet
end
