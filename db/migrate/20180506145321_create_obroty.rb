class CreateObroty < ActiveRecord::Migration
  def change
    create_table :obroty do |t|
      t.integer :Id_kontrahenci
      t.integer :Rok
      t.integer :Miesiac
      t.decimal :Kwota

      t.timestamps null: false
    end
  end
end
