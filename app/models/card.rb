class Card < ApplicationRecord
    belongs_to :deck

    validates :suit, :number, :location, presence: true

    def self.get_image(suit, number)
      image = number.to_s + suit
      '../images/JPEG/' + image + ".jpg"
    end

end
