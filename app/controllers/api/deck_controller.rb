require 'pry'

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

  def update
    deck = Deck.find(params[:deck][:id])
    deck.update(deck_params)
    render json: @deck
  end

  def destroy
    set_deck
    @deck.destroy
    render json: @deck
  end

  private

  def set_deck
    @deck = Deck.find(params[:id])
  end

  def deck_params
    params.require(:deck).permit(card_attributes: [:location])
  end

end
