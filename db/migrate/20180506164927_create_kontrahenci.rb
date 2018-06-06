class CreateKontrahenci < ActiveRecord::Migration
  def change
    create_table :kontrahenci do |t|
      t.integer :system_id
      t.integer :opiekun_id
      t.integer :status_text_id :default => 2
      t.string :nazwa
      t.string :nip
      t.string :www
      t.string :numer_tel
      t.string :numer_fak
      t.string :email
      
      t.timestamps null: false
    end
  end
end
