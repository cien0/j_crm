class CreateAdresOsoba < ActiveRecord::Migration
  def change
    create_table :adres_osoba do |t|
      t.integer :Id_Osoba_kont
      t.integer :Typ
      t.string :Kraj
      t.string :Kod_pocztowy
      t.string :Miasto
      t.string :Skrytka
      t.string :Ulica
      t.string :Nr_budynku
      t.string :Nr_lokalu
      t.text :Opis

      t.timestamps null: false
    end
  end
end
