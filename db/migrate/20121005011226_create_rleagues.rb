class CreateRleagues < ActiveRecord::Migration
  def change
    create_table :rleagues do |t|
      t.string :name

      t.timestamps
    end
  end
end
