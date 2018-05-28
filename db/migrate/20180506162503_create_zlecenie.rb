class CreateZlecenie < ActiveRecord::Migration
  def change
    create_table :zlecenie do |t|
      t.integer :kierownik_id
      t.integer :opiekun_id
      t.date :data_utworzenia
      t.date :data_zlecenia
      t.integer :typ_spotkania
      t.string :opis
      t.integer :status_zlecenia
      t.text :raport
      t.text :info

      t.timestamps null: false
    end
  end
end
