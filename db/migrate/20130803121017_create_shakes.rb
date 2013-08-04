class CreateShakes < ActiveRecord::Migration
  def change
    create_table :shakes do |t|
      t.string :name

      t.timestamps
    end
  end
end
