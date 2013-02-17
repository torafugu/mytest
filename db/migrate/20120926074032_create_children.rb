class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
