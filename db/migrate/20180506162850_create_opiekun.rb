class CreateOpiekun < ActiveRecord::Migration
  def change
    create_table :opiekun do |t|
      t.string :Imie
      t.string :Nazwisko
      t.string :Login
      t.boolean :Aktywny

      t.timestamps null: false
    end
  end
end
