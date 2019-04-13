class CreateBikeImages < ActiveRecord::Migration[5.2]
  def change
    create_table :bike_images do |t|
      t.integer :ref
      t.string :owner_name
      t.string :title
      t.string :description
      t.date :uploaded
      t.date :taken
      t.string :photo_url

      t.timestamps
    end
  end
end
