class CreateIdonlies < ActiveRecord::Migration
  def change
    create_table :idonlies do |t|

      t.timestamps
    end
  end
end
