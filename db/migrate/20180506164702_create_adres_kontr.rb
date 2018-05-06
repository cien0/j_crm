class CreateAdresKontr < ActiveRecord::Migration
  def change
    create_table :adres_kontr do |t|
      t.integer :Id_Kontrahenci
      t.integer :Typ
      t.string :Kraj
      t.string :Kod_pocztowy
      t.string :Miasto
      t.string :Skrytka
      t.string :Ulica
      t.string :Nr_budynku
      t.string :Nr_lokalu

      t.timestamps null: false
    end
  end
end
