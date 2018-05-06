class CreateFaktury < ActiveRecord::Migration
  def change
    create_table :faktury do |t|
      t.integer :Id_kontrahenci
      t.string :Nr_faktury
      t.decimal :Kwota
      t.decimal :VAT

      t.timestamps null: false
    end
  end
end
