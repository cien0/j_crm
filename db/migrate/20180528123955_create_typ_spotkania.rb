class CreateTypSpotkania < ActiveRecord::Migration
  def change
    create_table :typ_spotkania do |t|
      t.string :typ

      t.timestamps null: false
    end
  end
end
