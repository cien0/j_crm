class CreateDostMarketingowe < ActiveRecord::Migration
  def change
    create_table :dost_marketingowe do |t|
      t.integer :kont_klient_id
      t.string :typ
      t.decimal :ile

      t.timestamps null: false
    end
  end
end
