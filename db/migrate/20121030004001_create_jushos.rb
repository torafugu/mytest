class CreateJushos < ActiveRecord::Migration
  def change
    create_table :jushos do |t|
      t.references :todofuken
      t.references :shichoson
      t.string :sonotajusho

      t.timestamps
    end
    add_index :jushos, :todofuken_id
    add_index :jushos, :shichoson_id
  end
end
