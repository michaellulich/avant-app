json.array! @cardholders.each do |cardholder|
  json.id cardholder.id
  json.final_balance cardholder.final_balance
  json.total_interest cardholder.total_interest
  json.final_balance_with_interest number_to_currency(cardholder.final_balance_with_interest)
  json.swipe_count cardholder.swipe_count
  json.payment_count cardholder.payment_count
  json.card_actions cardholder.card_actions.each do |card_action|
    json.id card_action.id
    json.cardholder_id card_action.cardholder_id
    json.start_date card_action.start_day
    # json.start_day_convert card_action.start_day_convert
    # json.end_day_convert card_action.end_day_convert
    json.day_difference card_action.day_difference
    json.debit card_action.debit
    json.amount card_action.amount
    json.current_balance card_action.current_balance
    json.interest card_action.interest
    
  end
end