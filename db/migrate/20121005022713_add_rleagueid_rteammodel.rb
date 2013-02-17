class AddRleagueidRteammodel < ActiveRecord::Migration
  def up
    add_column :rteams, :rleague_id, :integer
    add_index :rteams, :rleague_id
  end

  def down
    remove_index :rteams, :rleague_id
    remove_column :rteams, :rleague_id
  end
end
