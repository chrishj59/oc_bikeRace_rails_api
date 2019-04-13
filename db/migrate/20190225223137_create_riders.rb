class CreateRiders < ActiveRecord::Migration[5.2]
  def up
    create_table :riders do |t|
      t.string :firstName
      t.string :lastName
      t.string :originCity
      t.string :originState
      t.string :locText
      t.decimal :lat, precision: 5, scale: 2
      t.decimal :lng, precision: 5, scale: 2

      t.timestamps
    end
  end
  def down
   drop_table :riders
  end
end
