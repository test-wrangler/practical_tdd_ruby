# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_13_175656) do

  create_table "carts", force: :cascade do |t|
  end

  create_table "carts_menu_items", id: false, force: :cascade do |t|
    t.integer "cart_id", null: false
    t.integer "menu_item_id", null: false
    t.index ["cart_id", "menu_item_id"], name: "index_carts_menu_items_on_cart_id_and_menu_item_id"
    t.index ["menu_item_id", "cart_id"], name: "index_carts_menu_items_on_menu_item_id_and_cart_id"
  end

  create_table "carts_tacos", id: false, force: :cascade do |t|
    t.integer "cart_id", null: false
    t.integer "taco_id", null: false
    t.index ["cart_id", "taco_id"], name: "index_carts_tacos_on_cart_id_and_taco_id"
    t.index ["taco_id", "cart_id"], name: "index_carts_tacos_on_taco_id_and_cart_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.text "description"
  end

  create_table "ingredients_menu_items", id: false, force: :cascade do |t|
    t.integer "ingredient_id", null: false
    t.integer "menu_item_id", null: false
    t.index ["ingredient_id", "menu_item_id"], name: "index_ingredients_menu_items_on_ingredient_id_and_menu_item_id"
    t.index ["menu_item_id", "ingredient_id"], name: "index_ingredients_menu_items_on_menu_item_id_and_ingredient_id"
  end

  create_table "ingredients_tacos", id: false, force: :cascade do |t|
    t.integer "ingredient_id", null: false
    t.integer "taco_id", null: false
    t.index ["ingredient_id", "taco_id"], name: "index_ingredients_tacos_on_ingredient_id_and_taco_id"
    t.index ["taco_id", "ingredient_id"], name: "index_ingredients_tacos_on_taco_id_and_ingredient_id"
  end

  create_table "ingredients_users", id: false, force: :cascade do |t|
    t.integer "ingredient_id", null: false
    t.integer "user_id", null: false
    t.index ["ingredient_id", "user_id"], name: "index_ingredients_users_on_ingredient_id_and_user_id"
    t.index ["user_id", "ingredient_id"], name: "index_ingredients_users_on_user_id_and_ingredient_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.text "name"
    t.text "type"
    t.integer "price"
  end

  create_table "tacos", force: :cascade do |t|
    t.text "name"
  end

  create_table "users", force: :cascade do |t|
    t.text "membership"
  end

end
