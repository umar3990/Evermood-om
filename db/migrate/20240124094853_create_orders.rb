class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.integer :status, default: 0
      t.string :number
      t.decimal :amount, precision: 10, scale: 2

      t.timestamps
    end
  end
end
