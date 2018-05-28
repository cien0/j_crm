class CreateStatusZlecenia < ActiveRecord::Migration
  def change
    create_table :status_zlecenia do |t|
      t.string :status

      t.timestamps null: false
    end
  end
end
