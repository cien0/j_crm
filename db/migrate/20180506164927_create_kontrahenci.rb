class CreateKontrahenci < ActiveRecord::Migration
  def change
    create_table :kontrahenci do |t|
      t.integer :Id_system
      t.string :Nazwa
      t.string :NIP
      t.string :WWW
      t.string :Numer_tel
      t.string :Numer_fak
      t.string :Email
      t.integer :Id_opiekun

      t.timestamps null: false
    end
  end
end
