class Api::CardActionsController < ApplicationController
  def index
    @card_action = CardAction.all
    render "index.json.jbuilder"
  end

  def create
    current_day = Time.parse(params[:date]) || Time.now
    current_cardholder = Cardholder.find_by(id: params[:cardholder_id])
    last_card_action = current_cardholder.card_actions.last
    current_balance = 0
    if last_card_action
      last_card_action.update(end_day: current_day)
      current_balance = last_card_action.current_balance
    end
    @card_actions = CardAction.new(
        cardholder_id: params[:cardholder_id],
        debit: params[:debit],
        amount: params[:amount],
        start_day: current_day,
        current_balance: current_balance + params[:amount].to_f
      )

    # # ALT ------
    # @card_actions = current_cardholder.create_card_action(
    #   params[:amount],
    #   current_day
    # )
    if @card_actions.save
      render "index.json.jbuilder"
    else 
      render json: "try again"
    end
  end
end
