class CreateOpiekun < ActiveRecord::Migration
  def change
    create_table :opiekun do |t|
      t.string :imie
      t.string :nazwisko
      t.string :login
      t.boolean :aktywny

      t.timestamps null: false
    end
  end
end
