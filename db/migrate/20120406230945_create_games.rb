class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :time
      t.integer :hometeam_id
      t.integer :awayteam_id
      t.integer :homescore
      t.integer :awayscore
      t.integer :cref_id
      t.integer :a1ref_id
      t.integer :a2ref_id
      t.text :notes

      t.timestamps
    end
  end
end
