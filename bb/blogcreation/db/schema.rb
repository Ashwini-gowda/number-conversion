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

ActiveRecord::Schema.define(version: 20190519161657) do

  create_table "employees", force: :cascade do |t|
    t.text "name"
    t.integer "empid"
    t.integer "phonumber"
    t.text "gender"
    t.date "joining_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.text "itemname"
    t.text "brand"
    t.date "purchase_date"
    t.integer "previous_holder_id"
    t.integer "current_holder_id"
    t.date "service_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text "title"
    t.text "body"
    t.text "author"
    t.text "media"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "previous_holders", force: :cascade do |t|
    t.integer "empid"
    t.date "from_previous_holder_date"
    t.date "to_current_holder_date"
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
