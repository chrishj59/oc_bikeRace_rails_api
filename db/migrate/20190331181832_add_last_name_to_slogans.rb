class AddLastNameToSlogans < ActiveRecord::Migration[5.2]
  def change
    add_column :slogans, :lastName, :string
  end
end
