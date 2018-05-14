class CreateKontrahenci < ActiveRecord::Migration
  def change
    create_table :kontrahenci do |t|
      t.integer :system_id
      t.string :nazwa
      t.string :nip
      t.string :www
      t.string :numer_tel
      t.string :numer_fak
      t.string :email
      t.integer :opiekun_id

      t.timestamps null: false
    end
  end
end
