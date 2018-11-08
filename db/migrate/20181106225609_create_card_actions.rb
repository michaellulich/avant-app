class CreateCardActions < ActiveRecord::Migration[5.2]
  def change
    create_table :card_actions do |t|
      t.integer :cardholder_id
      t.boolean :debit
      t.integer :amount
      t.datetime :start_day
      t.datetime :end_day

      t.timestamps
    end
  end
end
