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

ActiveRecord::Schema.define(version: 20160922160229) do

  create_table "balances", force: :cascade do |t|
    t.string   "owe_to",     limit: 255
    t.string   "owe_from",   limit: 255
    t.string   "amount",     limit: 255
    t.integer  "event_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.date     "date_of_event"
    t.string   "location",      limit: 255
    t.float    "amount",        limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "user_paids", force: :cascade do |t|
    t.float    "amount",        limit: 24
    t.integer  "event_id",      limit: 4
    t.integer  "user_id",       limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.float    "amount_to_get", limit: 24
    t.float    "amount_to_pay", limit: 24
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.string   "email",               limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.float    "total_amount_to_pay", limit: 24
    t.string   "to_pay",              limit: 255
  end

end