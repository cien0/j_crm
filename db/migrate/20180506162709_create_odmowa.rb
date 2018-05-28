class CreateOdmowa < ActiveRecord::Migration
  def change
    create_table :odmowa do |t|
      t.integer :kont_klient_id
      t.integer :odmowa_typ
      t.date :data

      t.timestamps null: false
    end
  end
end
