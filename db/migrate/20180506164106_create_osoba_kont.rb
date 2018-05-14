class CreateOsobaKont < ActiveRecord::Migration
  def change
    create_table :osoba_kont do |t|
      t.string :imie
      t.string :imiona
      t.string :nazwisko
      t.date :data_urodz

      t.timestamps null: false
    end
  end
end
