class AddDivisionIDtoGames < ActiveRecord::Migration
  def up
    add_column :games, :division_id, :integer
  end

  def down
  end
end
