class CreateKontKlient < ActiveRecord::Migration
  def change
    create_table :kont_klient do |t|
      t.integer :Id_Kontrahenci
      t.date :Data
      t.integer :Typ
      t.integer :Cel
      t.text :Raport
      t.text :Inf_dodat

      t.timestamps null: false
    end
  end
end
