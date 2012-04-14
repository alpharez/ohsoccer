class AddFieldsToGames < ActiveRecord::Migration
  def change
    add_column :games, :field_id, :integer
    add_column :games, :fieldname, :string
  end
end
