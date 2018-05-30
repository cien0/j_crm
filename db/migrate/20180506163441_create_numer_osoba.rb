class CreateNumerOsoba < ActiveRecord::Migration
  def change
    create_table :numer_osoba do |t|
      t.integer :osoba_kont_id
      t.string :kontakt
      t.integer :typ_kontaktu_id
      t.text :opis

      t.timestamps null: false
    end
  end
end
