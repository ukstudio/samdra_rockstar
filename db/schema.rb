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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120424094225) do

  create_table "territories", :force => true do |t|
    t.integer  "user_id",                       :null => false
    t.integer  "x",                             :null => false
    t.integer  "y",                             :null => false
    t.boolean  "home",       :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "territories", ["user_id"], :name => "index_territories_on_user_id"

  create_table "towers", :force => true do |t|
    t.string   "tower_name"
    t.integer  "x"
    t.integer  "y"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "enemy_flag"
  end

end
