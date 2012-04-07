class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :division
      t.references :club

      t.timestamps
    end
    add_index :teams, :club_id
  end
end
