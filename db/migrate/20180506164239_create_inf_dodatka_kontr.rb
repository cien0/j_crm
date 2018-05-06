class CreateInfDodatkaKontr < ActiveRecord::Migration
  def change
    create_table :inf_dodatka_kontr do |t|
      t.integer :Id_Kontrahenci
      t.text :Inf_dodatkowa

      t.timestamps null: false
    end
  end
end
