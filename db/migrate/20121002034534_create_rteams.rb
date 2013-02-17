class CreateRteams < ActiveRecord::Migration
  def change
    create_table :rteams do |t|
      t.string :name

      t.timestamps
    end
  end
end
