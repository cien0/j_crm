class CreateOdmowaMark < ActiveRecord::Migration
  def change
    create_table :odmowa_mark do |t|
      t.integer :kont_klient_id
      t.integer :odmowa_typ_id
      t.date :data

      t.timestamps null: false
    end
  end
end
