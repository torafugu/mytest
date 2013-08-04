class CreateDouros < ActiveRecord::Migration
  def change
    create_table :douros do |t|
      t.string :name

      t.timestamps
    end
  end
end
