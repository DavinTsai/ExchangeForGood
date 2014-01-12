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

ActiveRecord::Schema.define(:version => 20140110104621) do

  create_table "accounts", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "activities", :force => true do |t|
    t.integer  "activity_id"
    t.string   "title"
    t.string   "date"
    t.string   "time"
    t.string   "address"
    t.string   "phone"
    t.text     "description"
    t.integer  "uploadproduct_id"
    t.integer  "uploadproduct_activityship_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "uploadproduct_activityships", :force => true do |t|
    t.integer  "uploadproduct_id"
    t.integer  "activity_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "uploadproducts", :force => true do |t|
    t.integer  "uploadproduct_id"
    t.string   "title"
    t.integer  "cate"
    t.string   "condition"
    t.text     "discription"
    t.string   "atitle"
    t.string   "date"
    t.string   "time"
    t.string   "address"
    t.string   "phone"
    t.text     "adescription"
    t.integer  "whocheck"
    t.integer  "check"
    t.text     "feedback"
    t.integer  "done"
    t.integer  "whodone"
    t.string   "pass"
    t.text     "ownerfeedback"
    t.string   "dname"
    t.string   "dphone"
    t.string   "daddr"
    t.integer  "sum"
    t.integer  "count"
    t.float    "avg"
    t.integer  "grade"
    t.integer  "fin"
    t.integer  "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
    t.string   "pic0_file_name"
    t.string   "pic0_content_type"
    t.integer  "pic0_file_size"
    t.datetime "pic0_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
