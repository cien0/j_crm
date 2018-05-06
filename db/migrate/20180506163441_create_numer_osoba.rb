class CreateNumerOsoba < ActiveRecord::Migration
  def change
    create_table :numer_osoba do |t|
      t.integer :Id_Osoba_kont
      t.string :Kontakt
      t.integer :Typ
      t.text :Opis

      t.timestamps null: false
    end
  end
end
