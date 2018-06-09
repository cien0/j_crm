class CreateTypKontaktu < ActiveRecord::Migration
  def change
    create_table :typ_kontaktu do |t|
      t.string :typ

      t.timestamps null: false
    end
  end
end
