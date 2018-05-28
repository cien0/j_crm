class CreateStatusText < ActiveRecord::Migration
  def change
    create_table :status_text do |t|
      t.string :status_text

      t.timestamps null: false
    end
  end
end
