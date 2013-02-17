class CreateBettergames < ActiveRecord::Migration
  def change
    create_table :bettergames do |t|
      t.date :date

      t.timestamps
    end
  end
end
