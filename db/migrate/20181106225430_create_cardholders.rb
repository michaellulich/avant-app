class CreateCardholders < ActiveRecord::Migration[5.2]
  def change
    create_table :cardholders do |t|
      t.decimal :apr
      t.integer :creditlimit

      t.timestamps
    end
  end
end
