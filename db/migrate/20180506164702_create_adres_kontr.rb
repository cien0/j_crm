class CreateAdresKontr < ActiveRecord::Migration
  def change
    create_table :adres_kontr do |t|
      t.integer :kontrahenci_id
      t.integer :typ
      t.string :kraj
      t.string :kod_pocztowy
      t.string :miasto
      t.string :skrytka
      t.string :ulica
      t.string :nr_budynku
      t.string :nr_lokalu

      t.timestamps null: false
    end
  end
end
