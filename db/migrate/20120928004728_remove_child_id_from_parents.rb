class RemoveChildIdFromParents < ActiveRecord::Migration
  def up
    remove_column :parents, :child_id
  end

  def down
    add_column :parents, :child_id, :integer
  end
end
