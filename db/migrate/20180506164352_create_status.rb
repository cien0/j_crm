class CreateStatus < ActiveRecord::Migration
  def change
    create_table :status do |t|
      t.integer :Id_kontrahenci
      t.integer :Status

      t.timestamps null: false
    end
  end
end
