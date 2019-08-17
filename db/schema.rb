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

ActiveRecord::Schema.define(version: 2019_09_01_180902) do

  create_table "carts", force: :cascade do |t|
  end

  create_table "carts_tacos", id: false, force: :cascade do |t|
    t.integer "cart_id", null: false
    t.integer "taco_id", null: false
    t.index ["cart_id", "taco_id"], name: "index_carts_tacos_on_cart_id_and_taco_id"
    t.index ["taco_id", "cart_id"], name: "index_carts_tacos_on_taco_id_and_cart_id"
  end

  create_table "tacos", force: :cascade do |t|
    t.text "ingredients"
    t.text "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "allergies"
  end

end
