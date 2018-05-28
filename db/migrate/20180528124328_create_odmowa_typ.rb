class CreateOdmowaTyp < ActiveRecord::Migration
  def change
    create_table :odmowa_typ do |t|
      t.string :typ

      t.timestamps null: false
    end
  end
end
