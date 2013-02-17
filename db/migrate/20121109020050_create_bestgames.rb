class CreateBestgames < ActiveRecord::Migration
  def change
    create_table :bestgames do |t|
      t.date :date

      t.timestamps
    end
  end
end
