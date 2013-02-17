class CreateBestlineups < ActiveRecord::Migration
  def change
    create_table :bestlineups do |t|
      t.references :bestgame
      t.references :player

      t.timestamps
    end
    add_index :bestlineups, :bestgame_id
    add_index :bestlineups, :player_id
  end
end
