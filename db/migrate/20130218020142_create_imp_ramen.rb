class CreateImpRamen < ActiveRecord::Migration
  def change
    create_table :imp_ramen do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
