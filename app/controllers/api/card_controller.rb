class Api::CardController < ApplicationController

  def update
    set_card
    @card.update(card_params)
    render json: @card
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:location)
  end

end
