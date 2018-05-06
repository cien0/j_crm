class CreateOdmowa < ActiveRecord::Migration
  def change
    create_table :odmowa do |t|
      t.integer :Id_Kont_klient
      t.integer :Odmowa
      t.date :Data

      t.timestamps null: false
    end
  end
end
