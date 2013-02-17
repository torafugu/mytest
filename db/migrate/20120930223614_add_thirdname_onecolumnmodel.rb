class AddThirdnameOnecolumnmodel < ActiveRecord::Migration
  def up
    add_column :onecolumnmodels, :thirdname, :string
  end

  def down
    remove_column  :onecolumnmodels, :thirdname
  end
end
