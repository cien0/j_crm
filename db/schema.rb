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

ActiveRecord::Schema.define(version: 20180530060111) do

  create_table "adres_kontr", force: :cascade do |t|
    t.integer  "kontrahenci_id"
    t.integer  "typ_adresu_id"
    t.string   "kraj"
    t.string   "kod_pocztowy"
    t.string   "miasto"
    t.string   "skrytka"
    t.string   "ulica"
    t.string   "nr_budynku"
    t.string   "nr_lokalu"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "adres_osoba", force: :cascade do |t|
    t.integer  "osoba_kont_id"
    t.integer  "typ_adresu_id"
    t.string   "kraj"
    t.string   "kod_pocztowy"
    t.string   "miasto"
    t.string   "skrytka"
    t.string   "ulica"
    t.string   "nr_budynku"
    t.string   "nr_lokalu"
    t.text     "opis"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "cel_kontaktu", force: :cascade do |t|
    t.string   "cel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dost_marketingowe", force: :cascade do |t|
    t.integer  "kont_klient_id"
    t.string   "typ"
    t.decimal  "ile"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "faktury", force: :cascade do |t|
    t.integer  "kontrahenci_id"
    t.string   "nr_faktury"
    t.decimal  "kwota"
    t.decimal  "vat"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "inf_dodatka_kontr", force: :cascade do |t|
    t.integer  "kontrahenci_id"
    t.text     "inf_dodatkowa"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "kierownik", force: :cascade do |t|
    t.string   "imie"
    t.string   "nazwisko"
    t.string   "login"
    t.boolean  "aktywny"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kont_klient", force: :cascade do |t|
    t.integer  "kontrahenci_id"
    t.date     "data"
    t.integer  "typ_spotkania_id"
    t.integer  "cel_kontaktu_id"
    t.text     "raport"
    t.text     "inf_dodat"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "kontrahenci", force: :cascade do |t|
    t.integer  "system_id"
    t.string   "nazwa"
    t.string   "nip"
    t.string   "www"
    t.string   "numer_tel"
    t.string   "numer_fak"
    t.string   "email"
    t.integer  "opiekun_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "numer_osoba", force: :cascade do |t|
    t.integer  "osoba_kont_id"
    t.string   "kontakt"
    t.integer  "typ_kontaktu_id"
    t.text     "opis"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "obroty", force: :cascade do |t|
    t.integer  "kontrahenci_id"
    t.integer  "rok"
    t.integer  "miesiac"
    t.decimal  "kwota"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "odmowa_mark", force: :cascade do |t|
    t.integer  "kont_klient_id"
    t.integer  "odmowa_typ_id"
    t.date     "data"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "odmowa_typ", force: :cascade do |t|
    t.string   "typ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opiekun", force: :cascade do |t|
    t.string   "imie"
    t.string   "nazwisko"
    t.string   "login"
    t.boolean  "aktywny"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osoba_kont", force: :cascade do |t|
    t.string   "imie"
    t.string   "imiona"
    t.string   "nazwisko"
    t.date     "data_urodz"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "status", force: :cascade do |t|
    t.integer  "kontrahenci_id"
    t.integer  "status_text_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "status_text", force: :cascade do |t|
    t.string   "status_text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "status_zlecenia", force: :cascade do |t|
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "typ_adresu", force: :cascade do |t|
    t.string   "typ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "typ_kontraktu", force: :cascade do |t|
    t.string   "typ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "typ_spotkania", force: :cascade do |t|
    t.string   "typ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user", force: :cascade do |t|
    t.string   "username",               default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "user", ["reset_password_token"], name: "index_user_on_reset_password_token", unique: true
  add_index "user", ["username"], name: "index_user_on_username", unique: true

  create_table "zlecenie", force: :cascade do |t|
    t.integer  "kierownik_id"
    t.integer  "opiekun_id"
    t.date     "data_utworzenia"
    t.date     "data_zlecenia"
    t.integer  "typ_spotkania_id"
    t.string   "opis"
    t.integer  "status_zlecenia_id"
    t.text     "raport"
    t.text     "info"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
