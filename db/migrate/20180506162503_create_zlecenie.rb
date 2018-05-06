class CreateZlecenie < ActiveRecord::Migration
  def change
    create_table :zlecenie do |t|
      t.integer :Id_Kierownik
      t.integer :Id_Opiekun
      t.date :Data_utworzenia
      t.date :Data_zlecenia
      t.integer :Typ
      t.string :Opis
      t.integer :Status
      t.text :Raport
      t.text :Info

      t.timestamps null: false
    end
  end
end
