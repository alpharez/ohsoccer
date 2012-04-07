class AddDivisionIndexToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :division_index, :integer

  end
end
