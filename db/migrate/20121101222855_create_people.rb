class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.integer :first_favfood_id
      t.integer :second_favfood_id
      t.integer :third_favfood_id

      t.timestamps
    end
  end
end
