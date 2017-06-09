class RenameDriverInTrips < ActiveRecord::Migration[5.0]
  def change
    rename_column :trips, :driver, :driver_id
  end
end
