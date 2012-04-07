class RemoveDivisionFromTeam < ActiveRecord::Migration
  def up
  end

  def down
    remove_column :teams, :division
  end
end
