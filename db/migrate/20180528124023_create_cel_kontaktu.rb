class CreateCelKontaktu < ActiveRecord::Migration
  def change
    create_table :cel_kontaktu do |t|
      t.string :cel

      t.timestamps null: false
    end
  end
end
