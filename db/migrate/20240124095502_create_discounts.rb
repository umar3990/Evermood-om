class CreateDiscounts < ActiveRecord::Migration[7.1]
  def change
    create_table :discounts do |t|
      t.string :name
      t.string :code
      t.decimal :percentage
      t.datetime :start_date
      t.datetime :expiry_date

      t.timestamps
    end
  end
end
