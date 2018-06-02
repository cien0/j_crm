class CreateDostMarketingowe < ActiveRecord::Migration
  def change
    create_table :dost_marketingowe do |t|
      t.integer :kontrahenci_id
      t.string :typ
      t.decimal :ile
      t.date :data

      t.timestamps null: false
    end
  end
end
