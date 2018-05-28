class CreateKontKlient < ActiveRecord::Migration
  def change
    create_table :kont_klient do |t|
      t.integer :kontrahenci_id
      t.date :data
      t.integer :typ_spotkania
      t.integer :cel_kontaktu
      t.text :raport
      t.text :inf_dodat

      t.timestamps null: false
    end
  end
end
