class CreateRmembers < ActiveRecord::Migration
  def change
    create_table :rmembers do |t|
      t.string :name
      t.references :rteam

      t.timestamps
    end
    add_index :rmembers, :rteam_id
  end
end
