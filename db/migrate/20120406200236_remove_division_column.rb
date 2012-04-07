class RemoveDivisionColumn < ActiveRecord::Migration
  def up
    remove_column :teams, :division
  end

  def down
  end
end
