class ModifySongStatus < ActiveRecord::Migration
  def change
    remove_column :songs, :memorized
    add_column :songs, :status, :string
  end
end
