# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_01_24_130325) do
  create_table "discounts", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.decimal "percentage"
    t.datetime "start_date"
    t.datetime "expiry_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discounts_orders", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "discount_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discount_id"], name: "index_discounts_orders_on_discount_id"
    t.index ["order_id"], name: "index_discounts_orders_on_order_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.decimal "base_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients_line_items", force: :cascade do |t|
    t.integer "line_item_id", null: false
    t.integer "ingredient_id", null: false
    t.integer "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_ingredients_line_items_on_ingredient_id"
    t.index ["line_item_id"], name: "index_ingredients_line_items_on_line_item_id"
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "pizza_id", null: false
    t.integer "quantity"
    t.decimal "amount", precision: 10, scale: 2
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_line_items_on_order_id"
    t.index ["pizza_id"], name: "index_line_items_on_pizza_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "status", default: 0
    t.string "number"
    t.decimal "amount", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pizzas", force: :cascade do |t|
    t.string "name"
    t.decimal "base_price", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "free_items"
    t.datetime "start_date"
    t.datetime "expiry_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "discounts_orders", "discounts"
  add_foreign_key "discounts_orders", "orders"
  add_foreign_key "ingredients_line_items", "ingredients"
  add_foreign_key "ingredients_line_items", "line_items"
  add_foreign_key "line_items", "orders"
  add_foreign_key "line_items", "pizzas"
end
