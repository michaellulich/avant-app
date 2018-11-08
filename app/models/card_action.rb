class CardAction < ApplicationRecord
  belongs_to :cardholder
  
  def start_day_convert
    start_day.strftime('%d').to_i
  end

  def end_day_convert
    if !self.end_day
      self.end_day = Time.now
    end
  end

  def day_difference
    if !self.end_day
      self.end_day = Time.now
    end 
    (end_day.to_date - start_day.to_date).to_i
  end

  def interest 
    current_balance * (cardholder.apr / 365) * day_difference
  end

  
end
