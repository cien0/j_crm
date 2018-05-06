class CreateKierownik < ActiveRecord::Migration
  def change
    create_table :kierownik do |t|
      t.string :Imie
      t.string :Nazwisko
      t.string :Login
      t.boolean :Aktywny

      t.timestamps null: false
    end
  end
end
