class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :name
      t.references :league

      t.timestamps
    end
    add_index :divisions, :league_id
  end
end
