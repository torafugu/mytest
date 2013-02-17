class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :name
      t.text :body
      t.integer :child_id

      t.timestamps
    end
  end
end
