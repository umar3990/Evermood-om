class CreatePromotions < ActiveRecord::Migration[7.1]
  def change
    create_table :promotions do |t|
      t.string :name
      t.string :code
      t.integer :free_items
      t.datetime :start_date
      t.datetime :expiry_date

      t.timestamps
    end
  end
end
