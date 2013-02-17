class CreateShichosons < ActiveRecord::Migration
  def change
    create_table :shichosons do |t|
      t.references :todofuken
      t.string :name

      t.timestamps
    end
    add_index :shichosons, :todofuken_id
  end
end
