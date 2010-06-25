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

ActiveRecord::Schema.define(:version => 20100621125551) do

  create_table "bib_texts", :force => true do |t|
    t.string   "title"
    t.text     "source",     :limit => 2147483647
    t.text     "main",       :limit => 2147483647
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "els", :force => true do |t|
    t.string   "word"
    t.integer  "distance"
    t.integer  "start"
    t.integer  "bib_text_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
