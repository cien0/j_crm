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

ActiveRecord::Schema.define(version: 20180507063605) do

  create_table "adres_kontr", force: :cascade do |t|
    t.integer  "Id_Kontrahenci"
    t.integer  "Typ"
    t.string   "Kraj"
    t.string   "Kod_pocztowy"
    t.string   "Miasto"
    t.string   "Skrytka"
    t.string   "Ulica"
    t.string   "Nr_budynku"
    t.string   "Nr_lokalu"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "adres_osoba", force: :cascade do |t|
    t.integer  "Id_Osoba_kont"
    t.integer  "Typ"
    t.string   "Kraj"
    t.string   "Kod_pocztowy"
    t.string   "Miasto"
    t.string   "Skrytka"
    t.string   "Ulica"
    t.string   "Nr_budynku"
    t.string   "Nr_lokalu"
    t.text     "Opis"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "dost_marketingowe", force: :cascade do |t|
    t.integer  "Id_Kont_klient"
    t.string   "Typ"
    t.decimal  "Ile"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "faktury", force: :cascade do |t|
    t.integer  "Id_kontrahenci"
    t.string   "Nr_faktury"
    t.decimal  "Kwota"
    t.decimal  "VAT"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "inf_dodatka_kontr", force: :cascade do |t|
    t.integer  "Id_Kontrahenci"
    t.text     "Inf_dodatkowa"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "kierownik", force: :cascade do |t|
    t.string   "Imie"
    t.string   "Nazwisko"
    t.string   "Login"
    t.boolean  "Aktywny"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kont_klient", force: :cascade do |t|
    t.integer  "Id_Kontrahenci"
    t.date     "Data"
    t.integer  "Typ"
    t.integer  "Cel"
    t.text     "Raport"
    t.text     "Inf_dodat"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "kontrahenci", force: :cascade do |t|
    t.integer  "Id_system"
    t.string   "Nazwa"
    t.string   "NIP"
    t.string   "WWW"
    t.string   "Numer_tel"
    t.string   "Numer_fak"
    t.string   "Email"
    t.integer  "Id_opiekun"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "numer_osoba", force: :cascade do |t|
    t.integer  "Id_Osoba_kont"
    t.string   "Kontakt"
    t.integer  "Typ"
    t.text     "Opis"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "obroty", force: :cascade do |t|
    t.integer  "Id_kontrahenci"
    t.integer  "Rok"
    t.integer  "Miesiac"
    t.decimal  "Kwota"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "odmowa", force: :cascade do |t|
    t.integer  "Id_Kont_klient"
    t.integer  "Odmowa"
    t.date     "Data"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "opiekun", force: :cascade do |t|
    t.string   "Imie"
    t.string   "Nazwisko"
    t.string   "Login"
    t.boolean  "Aktywny"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osoba_kont", force: :cascade do |t|
    t.string   "Imie"
    t.string   "Imiona"
    t.string   "Nazwisko"
    t.date     "Data_urodz"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "status", force: :cascade do |t|
    t.integer  "Id_kontrahenci"
    t.integer  "Status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
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
    t.integer  "Id_Kierownik"
    t.integer  "Id_Opiekun"
    t.date     "Data_utworzenia"
    t.date     "Data_zlecenia"
    t.integer  "Typ"
    t.string   "Opis"
    t.integer  "Status"
    t.text     "Raport"
    t.text     "Info"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
