class CreateIngredientsLineItems < ActiveRecord::Migration[7.1]
  def change
    create_table :ingredients_line_items do |t|
      t.references :line_item, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
      t.integer :type

      t.timestamps
    end
  end
end
