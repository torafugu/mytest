class CreateSeihins < ActiveRecord::Migration
  def change
    create_table :seihins do |t|
      t.references :koujou
      t.integer :seihin_num

      t.timestamps
    end
    add_index :seihins, :koujou_id
  end
end
