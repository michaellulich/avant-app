class Cardholder < ApplicationRecord
  has_many :card_actions

  def final_balance
    balance = 0
    card_actions.each do |card_action|
      balance = card_action.current_balance
    end
    balance
  end

  def swipe_count
    count = 0
    card_actions.select do |card_action|
      if card_action.debit == true
        count += 1
      end
    end
    count
  end

  def payment_count
    count = 0
    card_actions.select do |card_action|
      if card_action.debit != true
        count += 1
      end
    end
    count
  end

  def total_interest
    card_actions.map{|card_action|
      card_action.interest
    }.reduce(0){|sum, num|
      sum + num
    }
  end

  def final_balance_with_interest
    total_interest + final_balance
  end

end
