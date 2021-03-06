# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100416141817) do

  create_table "benefits", :force => true do |t|
    t.string   "name"
    t.decimal  "value",      :precision => 8, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "benefits_employees", :id => false, :force => true do |t|
    t.integer "benefit_id"
    t.integer "employee_id"
  end

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.date     "hired_on"
    t.decimal  "salary",              :precision => 8, :scale => 2
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bank_account_number"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timetables", :force => true do |t|
    t.integer  "employees_id"
    t.datetime "entryHour"
    t.datetime "departureHour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
