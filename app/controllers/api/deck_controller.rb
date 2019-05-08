class Api::DeckController < ApplicationController

  def index
    @decks = Deck.all ||= []
    render json: @decks
  end

  def create
    deck = Deck.create!
    deck.create_standard_deck
    render json: deck
  end

  def destroy
  end

end
