class CreateFaktury < ActiveRecord::Migration
  def change
    create_table :faktury do |t|
      t.integer :kontrahenci_id
      t.string :nr_faktury
      t.decimal :kwota
      t.decimal :vat
      t.timestamps null: false
    end
  end
end
