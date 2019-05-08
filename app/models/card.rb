class Card < ApplicationRecord
    belongs_to :deck

    validates :suit, :number, :location, presence: true


end
