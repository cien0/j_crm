class CreateDostMarketingowe < ActiveRecord::Migration
  def change
    create_table :dost_marketingowe do |t|
      t.integer :Id_Kont_klient
      t.string :Typ
      t.decimal :Ile

      t.timestamps null: false
    end
  end
end
