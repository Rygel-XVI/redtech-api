class Deck < ApplicationRecord
    has_many :cards

    # refactor to move card creation into the Card model
    def create_standard_deck
      suits = ["H","D","S","C"]
      numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13]
      suits.each do |s|
        numbers.each do |n|
          pic_location = Card.get_image(s, n)
          self.cards << Card.create!(suit: s, number: n, location: 'deck', deck_id: self.id, image_location: pic_location)
        end
      end
      self
    end
end
