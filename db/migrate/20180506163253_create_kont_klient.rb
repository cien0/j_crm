class CreateKontKlient < ActiveRecord::Migration
  def change
    create_table :kont_klient do |t|
      t.integer :kontrahenci_id
      t.date :data
      t.integer :typ
      t.integer :cel
      t.text :raport
      t.text :inf_dodat

      t.timestamps null: false
    end
  end
end
