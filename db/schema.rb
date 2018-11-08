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

ActiveRecord::Schema.define(version: 2018_11_07_233853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "card_actions", force: :cascade do |t|
    t.integer "cardholder_id"
    t.boolean "debit"
    t.integer "amount"
    t.datetime "start_day"
    t.datetime "end_day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "current_balance", precision: 9, scale: 2
  end

  create_table "cardholders", force: :cascade do |t|
    t.decimal "apr"
    t.integer "creditlimit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "current_pay_period"
  end

end
