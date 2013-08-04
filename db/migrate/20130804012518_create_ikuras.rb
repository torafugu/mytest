class CreateIkuras < ActiveRecord::Migration
  def change
    create_table :ikuras do |t|
      t.references :shake
      t.string :name

      t.timestamps
    end
    add_index :ikuras, :shake_id
  end
end
