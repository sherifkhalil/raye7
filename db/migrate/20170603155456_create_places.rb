class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.decimal :longitude
      t.decimal :latitude

      t.timestamps
    end
  end
end
