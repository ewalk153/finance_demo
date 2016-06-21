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

ActiveRecord::Schema.define(version: 20160621193746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dbhero_dataclips", force: :cascade do |t|
    t.text     "description",                 null: false
    t.text     "raw_query",                   null: false
    t.text     "token",                       null: false
    t.text     "user"
    t.boolean  "private",     default: false, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "dbhero_dataclips", ["token"], name: "index_dbhero_dataclips_on_token", unique: true, using: :btree
  add_index "dbhero_dataclips", ["user"], name: "index_dbhero_dataclips_on_user", using: :btree

  create_table "payment_journals", force: :cascade do |t|
    t.string   "description"
    t.decimal  "amount",      precision: 10, scale: 2
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

end
