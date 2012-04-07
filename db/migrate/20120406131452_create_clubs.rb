class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :description
      t.string :url
      t.references :league

      t.timestamps
    end
    add_index :clubs, :league_id
  end
end
