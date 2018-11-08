class AddCurrentPayPeriodToCardholders < ActiveRecord::Migration[5.2]
  def change
    add_column :cardholders, :current_pay_period, :boolean
  end
end
