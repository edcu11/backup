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

ActiveRecord::Schema.define(version: 20161203015701) do

  create_table "categories", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catpoks", force: true do |t|
    t.integer  "poke_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "catpoks", ["category_id"], name: "index_catpoks_on_category_id"
  add_index "catpoks", ["poke_id"], name: "index_catpoks_on_poke_id"

  create_table "pokes", force: true do |t|
    t.text     "name"
    t.integer  "attack"
    t.integer  "defense"
    t.text     "avatar_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.string   "autor"
    t.text     "descripcion"
    t.integer  "rev"
    t.integer  "poke_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
