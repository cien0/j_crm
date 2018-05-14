class CreateKierownik < ActiveRecord::Migration
  def change
    create_table :kierownik do |t|
      t.string :imie
      t.string :nazwisko
      t.string :login
      t.boolean :aktywny

      t.timestamps null: false
    end
  end
end
