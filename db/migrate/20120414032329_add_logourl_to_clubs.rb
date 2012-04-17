class AddLogourlToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :logourl, :string

  end
end
