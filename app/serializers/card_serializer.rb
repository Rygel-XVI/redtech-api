class CardSerializer < ActiveModel::Serializer
  belongs_to :deck
  attributes :id, :suit, :number, :location
end
