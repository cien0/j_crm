class CreateTypAdresu < ActiveRecord::Migration
  def change
    create_table :typ_adresu do |t|
      t.string :typ

      t.timestamps null: false
    end
  end
end
