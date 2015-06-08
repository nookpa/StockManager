# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150608085414) do

  create_table "items", force: :cascade do |t|
    t.text     "code_name"
    t.datetime "sale_date"
    t.decimal  "sale_price"
    t.text     "type"
    t.text     "status"
    t.integer  "user_id"
    t.integer  "member_id"
    t.integer  "product_id"
    t.text     "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.text     "first_name"
    t.text     "last_name"
    t.text     "telephone"
    t.text     "email"
    t.text     "address"
    t.text     "facebook"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.text     "name"
    t.integer  "user_id"
    t.integer  "member_id"
    t.integer  "amount"
    t.text     "color"
    t.decimal  "cost_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "remark"
  end

  create_table "users", force: :cascade do |t|
    t.text     "name"
    t.text     "telephone"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "username",               default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
