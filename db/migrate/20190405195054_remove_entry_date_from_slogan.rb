class RemoveEntryDateFromSlogan < ActiveRecord::Migration[5.2]
  def change
    remove_column :slogans, :entryDate, :dateTime
  end
end
