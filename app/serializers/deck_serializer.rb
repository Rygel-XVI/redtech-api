class DeckSerializer < ActiveModel::Serializer
  has_many :cards
  attributes :id
end
