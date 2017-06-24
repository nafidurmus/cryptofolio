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

ActiveRecord::Schema.define(version: 20170624015611) do

  create_table "coins", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.boolean "erc20"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_at"], name: "index_coins_on_created_at"
  end

  create_table "recorded_prices", force: :cascade do |t|
    t.integer "coin_id"
    t.string "rank"
    t.string "usd"
    t.string "btc"
    t.string "eth"
    t.string "pct_1h"
    t.string "pct_24h"
    t.string "pct_7d"
    t.string "vol_24h"
    t.string "market_cap"
    t.string "last_updated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coin_id"], name: "index_recorded_prices_on_coin_id"
    t.index ["created_at"], name: "index_recorded_prices_on_created_at"
  end

end
