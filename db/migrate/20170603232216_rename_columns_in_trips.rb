class RenameColumnsInTrips < ActiveRecord::Migration[5.0]
  def change
    rename_column :trips, :source, :source_id
    rename_column :trips, :destination, :destination_id
  end
end
