class CreateAdresOsoba < ActiveRecord::Migration
  def change
    create_table :adres_osoba do |t|
      t.integer :osoba_kont_id
      t.integer :typ_adresu
      t.string :kraj
      t.string :kod_pocztowy
      t.string :miasto
      t.string :skrytka
      t.string :ulica
      t.string :nr_budynku
      t.string :nr_lokalu
      t.text :opis

      t.timestamps null: false
    end
  end
end
