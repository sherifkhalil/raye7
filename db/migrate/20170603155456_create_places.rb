class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.decimal :longitude, {:precision=>10, :scale=>6}
      t.decimal :latitude, {:precision=>10, :scale=>6}

      t.timestamps
    end
  end
end
