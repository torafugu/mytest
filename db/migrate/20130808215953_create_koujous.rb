class CreateKoujous < ActiveRecord::Migration
  def change
    create_table :koujous do |t|
      t.string :name

      t.timestamps
    end
  end
end
