class CreateOsobaKont < ActiveRecord::Migration
  def change
    create_table :osoba_kont do |t|
      t.string :Imie
      t.string :Imiona
      t.string :Nazwisko
      t.date :Data_urodz

      t.timestamps null: false
    end
  end
end
