class CreateImp2Ramen < ActiveRecord::Migration
  def change
    create_table :imp2_ramen do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
