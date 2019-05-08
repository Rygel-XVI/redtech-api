class DeckController < ApplicationController

  def index
    render json: Deck.all
  end

  def create
    deck = Deck.create!
    deck.create_standard_deck
    render json: deck
  end

  def destroy
  end
  
end
