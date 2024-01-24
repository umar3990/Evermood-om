class CreateLineItems < ActiveRecord::Migration[7.1]
  def change
    create_table :line_items do |t|
      t.references :order, null: false, foreign_key: true
      t.references :pizza, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :amount, precision: 10, scale: 2
      t.string :size

      t.timestamps
    end
  end
end
