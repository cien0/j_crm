class CreateStatus < ActiveRecord::Migration
  def change
    create_table :status do |t|
      t.integer :kontrahenci_id
      t.integer :status

      t.timestamps null: false
    end
  end
end
