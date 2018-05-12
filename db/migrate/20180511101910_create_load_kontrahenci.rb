class CreateLoadKontrahenci < ActiveRecord::Migration
  def change
    create_table :load_kontrahenci do |t|

      t.timestamps null: false
    end
  end
end
