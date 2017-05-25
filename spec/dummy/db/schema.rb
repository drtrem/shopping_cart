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

ActiveRecord::Schema.define(version: 20170523100142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "shopping_cart_carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_cart_coupons", force: :cascade do |t|
    t.integer  "number"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_cart_deliveries", force: :cascade do |t|
    t.string   "method"
    t.string   "days"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_cart_line_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.integer  "quantity"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_cart_orders", force: :cascade do |t|
    t.integer  "card_number"
    t.string   "name_on_card"
    t.string   "mm_yy"
    t.integer  "cvv"
    t.integer  "user_id"
    t.string   "state"
    t.integer  "subtotal"
    t.integer  "coupon_id"
    t.integer  "delivery_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.integer  "zip"
    t.string   "country"
    t.string   "phone"
    t.string   "shipping_first_name"
    t.string   "shipping_last_name"
    t.string   "shipping_address"
    t.string   "shipping_city"
    t.integer  "shipping_zip"
    t.string   "shipping_country"
    t.string   "shipping_phone"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
