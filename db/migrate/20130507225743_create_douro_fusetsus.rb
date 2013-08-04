class CreateDouroFusetsus < ActiveRecord::Migration
  def change
    create_table :douro_fusetsus do |t|
      t.references :shichoson
      t.references :douro

      t.timestamps
    end
    add_index :douro_fusetsus, :shichoson_id
    add_index :douro_fusetsus, :douro_id
  end
end
