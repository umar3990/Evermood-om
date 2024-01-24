class CreatePizzas < ActiveRecord::Migration[7.1]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.decimal :base_price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
