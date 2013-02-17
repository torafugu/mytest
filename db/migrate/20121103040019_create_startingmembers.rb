class CreateStartingmembers < ActiveRecord::Migration
  def change
    create_table :startingmembers do |t|
      t.date :game_date

      t.timestamps
    end
  end
end
