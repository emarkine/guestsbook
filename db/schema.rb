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

ActiveRecord::Schema.define(version: 20180103164331) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "code"
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "sign"
    t.bigint "country_id"
    t.string "state"
    t.index ["country_id"], name: "index_currencies_on_country_id"
  end

  create_table "guests", force: :cascade do |t|
    t.bigint "node_id"
    t.string "aac"
    t.string "https"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["node_id"], name: "index_guests_on_node_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.string "ref"
    t.integer "position"
    t.index ["name"], name: "index_menus_on_name", unique: true
  end

  create_table "menus_users", id: false, force: :cascade do |t|
    t.bigint "menu_id", null: false
    t.bigint "user_id", null: false
    t.index ["menu_id", "user_id"], name: "index_menus_users_on_menu_id_and_user_id", unique: true
    t.index ["menu_id"], name: "index_menus_users_on_menu_id"
    t.index ["user_id"], name: "index_menus_users_on_user_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.date "date", null: false
    t.time "time", null: false
    t.string "name", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "surname", null: false
    t.string "lang", null: false
    t.bigint "country_id", null: false
    t.bigint "currency_id", null: false
    t.date "birthday"
    t.string "personal_code"
    t.string "mobile"
    t.string "phone_home"
    t.string "phone_work"
    t.string "skype"
    t.string "site"
    t.string "company"
    t.string "activity"
    t.string "street"
    t.string "postcode"
    t.string "city"
    t.string "region"
    t.bigint "invited_id"
    t.decimal "balance", precision: 10, scale: 2
    t.text "about"
    t.text "properties"
    t.text "note"
    t.string "start_page"
    t.string "photo"
    t.string "audio"
    t.string "video"
    t.string "password_digest"
    t.string "activation_code"
    t.datetime "sending_time"
    t.datetime "last_login"
    t.integer "incorrect_password_count", default: 0
    t.boolean "locked"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_users_on_country_id"
    t.index ["currency_id"], name: "index_users_on_currency_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["invited_id"], name: "index_users_on_invited_id"
  end

end
