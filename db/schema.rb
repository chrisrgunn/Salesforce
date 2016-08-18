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

ActiveRecord::Schema.define(version: 20160818002909) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "_hcmeta", force: :cascade do |t|
    t.text    "details"
    t.string  "org_id",  limit: 50
    t.integer "hcver"
  end

  create_table "_sf_event_log", force: :cascade do |t|
    t.string   "table_name",   limit: 128
    t.string   "action",       limit: 7
    t.datetime "synced_at",                default: "now()"
    t.datetime "sf_timestamp"
    t.string   "sfid",         limit: 20
    t.text     "record"
    t.boolean  "processed"
  end

  add_index "_sf_event_log", ["sfid"], name: "idx__sf_event_log_sfid", using: :btree
  add_index "_sf_event_log", ["table_name", "synced_at"], name: "idx__sf_event_log_comp_key", using: :btree

  create_table "_trigger_last_id", id: false, force: :cascade do |t|
    t.integer "trigger_log_id"
  end

  create_table "_trigger_log", force: :cascade do |t|
    t.integer  "processed_tx", limit: 8
    t.text     "values"
    t.string   "sfid",         limit: 18
    t.integer  "txid",         limit: 8
    t.text     "sf_message"
    t.integer  "record_id"
    t.string   "table_name",   limit: 128
    t.datetime "created_at",               default: "now()"
    t.datetime "processed_at"
    t.text     "old"
    t.integer  "sf_result"
    t.string   "action",       limit: 7
    t.datetime "updated_at",               default: "now()"
    t.string   "state",        limit: 8
  end

  add_index "_trigger_log", ["created_at"], name: "_trigger_log_idx_created_at", using: :btree
  add_index "_trigger_log", ["state", "id"], name: "_trigger_log_idx_state_id", using: :btree
  add_index "_trigger_log", ["state", "table_name"], name: "_trigger_log_idx_state_table_name", where: "(((state)::text = 'NEW'::text) OR ((state)::text = 'PENDING'::text))", using: :btree

  create_table "_trigger_log_archive", force: :cascade do |t|
    t.integer  "processed_tx", limit: 8
    t.text     "values"
    t.string   "sfid",         limit: 18
    t.integer  "txid",         limit: 8
    t.text     "sf_message"
    t.integer  "record_id"
    t.string   "table_name",   limit: 128
    t.datetime "created_at"
    t.datetime "processed_at"
    t.text     "old"
    t.integer  "sf_result"
    t.string   "action",       limit: 7
    t.datetime "updated_at"
    t.string   "state",        limit: 8
  end

  add_index "_trigger_log_archive", ["created_at"], name: "_trigger_log_archive_idx_created_at", using: :btree
  add_index "_trigger_log_archive", ["record_id"], name: "_trigger_log_archive_idx_record_id", using: :btree
  add_index "_trigger_log_archive", ["state", "table_name"], name: "_trigger_log_archive_idx_state_table_name", where: "((state)::text = 'FAILED'::text)", using: :btree

  create_table "account", force: :cascade do |t|
    t.string   "accountteam__c",          limit: 255
    t.string   "_hc_lastop",              limit: 32
    t.text     "_hc_err"
    t.string   "account_md_d__c",         limit: 18
    t.string   "account_md_d_title__c",   limit: 1300
    t.string   "phone",                   limit: 40
    t.boolean  "isdeleted"
    t.string   "account_md_d_email__c",   limit: 1300
    t.string   "account_md_d_name__c",    limit: 1300
    t.float    "annualrevenue"
    t.string   "recordtypeid",            limit: 18
    t.date     "assets_reported_date__c"
    t.string   "accountmanager__c",       limit: 25
    t.string   "name",                    limit: 255
    t.string   "account_manager__c",      limit: 18
    t.datetime "systemmodstamp"
    t.string   "account_md_d_phone__c",   limit: 1300
    t.string   "accountsitetype__c",      limit: 255
    t.string   "accountsource",           limit: 40
    t.datetime "createddate"
    t.string   "website",                 limit: 255
    t.string   "sfid",                    limit: 18
  end

  add_index "account", ["sfid"], name: "hcu_idx_account_sfid", unique: true, using: :btree
  add_index "account", ["systemmodstamp"], name: "hc_idx_account_systemmodstamp", using: :btree

  create_table "contact", force: :cascade do |t|
    t.string   "_hc_lastop",                       limit: 32
    t.string   "sfid",                             limit: 18
    t.datetime "createddate"
    t.boolean  "isdeleted"
    t.string   "name",                             limit: 121
    t.datetime "systemmodstamp"
    t.text     "_hc_err"
    t.string   "accountid",                        limit: 18
    t.string   "email",                            limit: 80
    t.string   "firstname",                        limit: 40
    t.string   "acct_global_account_executive__c", limit: 1300
    t.string   "lastnamelocal",                    limit: 80
    t.string   "firstnamelocal",                   limit: 40
    t.string   "phone",                            limit: 40
    t.string   "function__c",                      limit: 255
    t.string   "account_record_type__c",           limit: 1300
    t.string   "level__c",                         limit: 255
    t.string   "lastname",                         limit: 80
    t.string   "primary_functional_role__c",       limit: 255
    t.string   "account_name_local__c",            limit: 18
    t.string   "homephone",                        limit: 40
  end

  add_index "contact", ["sfid"], name: "hcu_idx_contact_sfid", unique: true, using: :btree
  add_index "contact", ["systemmodstamp"], name: "hc_idx_contact_systemmodstamp", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entries", force: :cascade do |t|
    t.string   "name"
    t.integer  "emp_id"
    t.string   "SFID"
    t.string   "Last_Change"
    t.string   "Modified_At"
    t.string   "Message"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "era__c", force: :cascade do |t|
    t.string   "name",           limit: 80
    t.text     "_hc_err"
    t.datetime "createddate"
    t.string   "sfid",           limit: 18
    t.boolean  "isdeleted"
    t.datetime "systemmodstamp"
    t.string   "_hc_lastop",     limit: 32
  end

  add_index "era__c", ["sfid"], name: "hcu_idx_era__c_sfid", unique: true, using: :btree
  add_index "era__c", ["systemmodstamp"], name: "hc_idx_era__c_systemmodstamp", using: :btree

  create_table "lead", force: :cascade do |t|
    t.datetime "createddate"
    t.string   "_hc_lastop",     limit: 32
    t.string   "sfid",           limit: 18
    t.string   "name",           limit: 121
    t.text     "_hc_err"
    t.datetime "systemmodstamp"
    t.boolean  "isdeleted"
  end

  add_index "lead", ["sfid"], name: "hcu_idx_lead_sfid", unique: true, using: :btree
  add_index "lead", ["systemmodstamp"], name: "hc_idx_lead_systemmodstamp", using: :btree

  create_table "opportunities", force: :cascade do |t|
    t.date     "proposalduedate__c"
    t.datetime "systemmodstamp"
    t.string   "accountid"
    t.string   "currencyisocode"
    t.string   "stagename"
    t.boolean  "isdeleted"
    t.date     "closedate"
    t.string   "opportunity_md_d__c"
    t.string   "leadsource"
    t.string   "_hc_lastop"
    t.string   "primary_key_buyer__c"
    t.float    "probability"
    t.float    "amount"
    t.text     "_hc_err"
    t.string   "type"
    t.string   "sfid"
    t.string   "natureofwork__c"
    t.string   "pursuitteam__c"
    t.datetime "createddate"
    t.string   "name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "opportunity", force: :cascade do |t|
    t.date     "proposalduedate__c"
    t.datetime "systemmodstamp"
    t.string   "accountid",            limit: 18
    t.string   "currencyisocode",      limit: 3
    t.string   "stagename",            limit: 40
    t.boolean  "isdeleted"
    t.date     "closedate"
    t.string   "opportunity_md_d__c",  limit: 18
    t.string   "leadsource",           limit: 40
    t.string   "_hc_lastop",           limit: 32
    t.string   "primary_key_buyer__c", limit: 18
    t.float    "probability"
    t.float    "amount"
    t.text     "_hc_err"
    t.string   "type",                 limit: 40
    t.string   "sfid",                 limit: 18
    t.string   "natureofwork__c",      limit: 255
    t.string   "pursuitteam__c",       limit: 255
    t.datetime "createddate"
    t.string   "name",                 limit: 120
  end

  add_index "opportunity", ["sfid"], name: "hcu_idx_opportunity_sfid", unique: true, using: :btree
  add_index "opportunity", ["systemmodstamp"], name: "hc_idx_opportunity_systemmodstamp", using: :btree

  create_table "opportunitylineitem", force: :cascade do |t|
    t.string   "name",           limit: 376
    t.text     "_hc_err"
    t.string   "sfid",           limit: 18
    t.datetime "createddate"
    t.boolean  "isdeleted"
    t.datetime "systemmodstamp"
    t.string   "_hc_lastop",     limit: 32
  end

  add_index "opportunitylineitem", ["sfid"], name: "hcu_idx_opportunitylineitem_sfid", unique: true, using: :btree
  add_index "opportunitylineitem", ["systemmodstamp"], name: "hc_idx_opportunitylineitem_systemmodstamp", using: :btree

  create_table "post_tests", force: :cascade do |t|
    t.string   "_hc_lastop"
    t.string   "sfid"
    t.string   "createddate"
    t.boolean  "isdeleted"
    t.string   "name"
    t.datetime "systemmodstamp"
    t.text     "_hc_err"
    t.string   "accountid"
    t.string   "email"
    t.string   "firstname"
    t.string   "acct_global_account_executive__c"
    t.string   "lastnamelocal"
    t.string   "firstnamelocal"
    t.string   "phone"
    t.string   "function__c"
    t.string   "account_record_type__c"
    t.string   "level__c"
    t.string   "lastname"
    t.string   "primary_functional_role__c"
    t.string   "account_name_local__c"
    t.string   "homephone"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "name"
    t.integer  "emp_id"
    t.string   "SFID"
    t.string   "Last_Change"
    t.string   "Modified_At"
    t.string   "Message"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "salesforce_models", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
