class CreateSlogans < ActiveRecord::Migration[5.2]
  def up
    create_table :slogans do |t|
      t.string :name
      t.string :email
      t.string :suggestion
      t.datetime :entryDate
      t.integer :ranking

      t.timestamps
    end
  end
  def down
   drop_table :slogans 
  end
end
