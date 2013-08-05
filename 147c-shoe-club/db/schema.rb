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

ActiveRecord::Schema.define(:version => 20130805032349) do

  create_table "customers", :force => true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "ship_speed"
    t.string  "ship_address1"
    t.string  "ship_city"
    t.string  "ship_state"
    t.string  "ship_zip_code"
    t.boolean "bill_address_same_as_ship"
    t.string  "bill_address1"
    t.string  "bill_city"
    t.string  "bill_state"
    t.string  "bill_zip_code"
  end

  create_table "u_s_states", :force => true do |t|
    t.string "abbreviation"
    t.string "name"
  end

end
