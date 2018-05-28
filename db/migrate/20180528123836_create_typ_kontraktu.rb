class CreateTypKontraktu < ActiveRecord::Migration
  def change
    create_table :typ_kontraktu do |t|
      t.string :typ

      t.timestamps null: false
    end
  end
end
