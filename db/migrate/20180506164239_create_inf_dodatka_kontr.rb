class CreateInfDodatkaKontr < ActiveRecord::Migration
  def change
    create_table :inf_dodatka_kontr do |t|
      t.integer :kontrahenci_id
      t.text :inf_dodatkowa

      t.timestamps null: false
    end
  end
end
