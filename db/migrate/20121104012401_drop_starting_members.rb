class DropStartingMembers < ActiveRecord::Migration
  def change
    drop_table :starting_members
  end
end
