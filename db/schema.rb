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

ActiveRecord::Schema.define(:version => 20141125042352) do

  create_table "complaints", :force => true do |t|
    t.integer "users_id",             :null => false
    t.string  "username"
    t.text    "complaint_suggestion"
  end

  create_table "pets", :force => true do |t|
    t.string "petid"
    t.string "petname"
    t.string "breed"
    t.string "color"
    t.date   "dob"
    t.text   "interest"
    t.text   "description"
    t.text   "ownerfname"
    t.text   "ownerlname"
    t.string "gender"
  end

  create_table "users", :force => true do |t|
    t.string "username"
    t.string "email"
    t.string "password"
  end

end
