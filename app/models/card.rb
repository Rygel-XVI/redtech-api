class Card < ApplicationRecord
    belongs_to :deck

    validates :suit, :number, :location, presence: true

    def self.get_image(suit, number)
      number.to_s + suit
    end

end
