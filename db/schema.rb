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

ActiveRecord::Schema.define(:version => 20110421130941) do

  create_table "groups", :force => true do |t|
    t.integer  "user_id"
    t.integer  "plan_id"
    t.integer  "permission"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "login_accounts", :force => true do |t|
    t.string   "type"
    t.integer  "user_id"
    t.string   "remote_account_id"
    t.string   "name"
    t.string   "login"
    t.string   "picture_url"
    t.string   "access_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "login_accounts", ["type"], :name => "index_login_accounts_on_type"
  add_index "login_accounts", ["user_id"], :name => "index_login_accounts_on_user_id"

  create_table "old_pages", :force => true do |t|
    t.string   "title",                                                         :null => false
    t.text     "body"
    t.decimal  "latitude",   :precision => 17, :scale => 14, :default => 0.0,   :null => false
    t.decimal  "longitude",  :precision => 17, :scale => 14, :default => 0.0,   :null => false
    t.integer  "page_id"
    t.string   "address"
    t.string   "icon_id"
    t.boolean  "meta",                                       :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "title",                         :null => false
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "latitude",   :default => 0.0,   :null => false
    t.decimal  "longitude",  :default => 0.0,   :null => false
    t.integer  "page_id"
    t.string   "address"
    t.string   "icon_id"
    t.boolean  "meta",       :default => false
  end

  create_table "plans", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.datetime "start_at"
    t.datetime "end_at"
    t.integer  "dates"
    t.boolean  "public",      :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", :force => true do |t|
    t.integer  "user_id"
    t.integer  "plan_id"
    t.datetime "date"
    t.integer  "day"
    t.text     "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "remember_token"
    t.string   "nickname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
