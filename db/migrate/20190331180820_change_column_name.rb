class ChangeColumnName < ActiveRecord::Migration[5.2]
  def up
   rename_column :slogans, :name, :firstName
  end
  def down
   rename_column :slogans, :firstName, :name
  end
end
