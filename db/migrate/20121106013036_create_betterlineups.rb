class CreateBetterlineups < ActiveRecord::Migration
  def change
    create_table :betterlineups do |t|
      t.references :bettergame
      t.references :player

      t.timestamps
    end
    add_index :betterlineups, :bettergame_id
    add_index :betterlineups, :player_id
  end
end
