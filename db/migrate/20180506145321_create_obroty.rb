class CreateObroty < ActiveRecord::Migration
  def change
    create_table :obroty do |t|
      t.integer :kontrahenci_id
      t.integer :rok
      t.integer :miesiac
      t.decimal :kwota

      t.timestamps null: false
    end
  end
end
