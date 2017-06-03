class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.integer :driver
      t.integer :source
      t.integer :destination
      t.datetime :departure_time
      t.integer :seats

      t.timestamps
    end
  end
end
