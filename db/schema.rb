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

ActiveRecord::Schema[7.1].define(version: 2024_03_28_162251) do
  create_table "cust_items", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.string "color"
    t.string "size"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_cust_items_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.string "province"
    t.string "country"
    t.string "postal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workorders", force: :cascade do |t|
    t.string "customer"
    t.string "item"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
