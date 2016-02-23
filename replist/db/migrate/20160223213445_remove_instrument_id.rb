class RemoveInstrumentId < ActiveRecord::Migration
  def change
    remove_column :songs, :instrument_id
    add_column :songs, :instrument, :string
  end
end
