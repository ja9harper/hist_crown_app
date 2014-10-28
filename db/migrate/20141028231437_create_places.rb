class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :image
      t.string :history
      t.string :latlng

      t.timestamps
    end
  end
end
