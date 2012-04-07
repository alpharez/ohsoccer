class FixColumnName < ActiveRecord::Migration
  def up
    rename_column :teams, :division_index, :division_id
  end

  def down
  end
end
