class AddCurrentBalanceToCardActions < ActiveRecord::Migration[5.2]
  def change
    add_column :card_actions, :current_balance, :decimal, precision: 9, scale: 2
  end
end
