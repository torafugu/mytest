class CreateKouins < ActiveRecord::Migration
  def change
    create_table :kouins do |t|
      t.references :koujou
      t.string :name

      t.timestamps
    end
    add_index :kouins, :koujou_id
  end
end
