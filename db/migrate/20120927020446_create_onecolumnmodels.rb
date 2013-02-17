class CreateOnecolumnmodels < ActiveRecord::Migration
  def change
    create_table :onecolumnmodels do |t|
      t.string :name

      t.timestamps
    end
  end
end
