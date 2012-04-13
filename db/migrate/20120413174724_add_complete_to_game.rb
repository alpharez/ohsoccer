class AddCompleteToGame < ActiveRecord::Migration
  def change
    add_column :games, :complete, :boolean
  end
end
