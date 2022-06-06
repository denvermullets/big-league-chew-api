class ChangeLeagueColumnsToNonNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :leagues, :league_name, false
    change_column_null :leagues, :latitude, false
    change_column_null :leagues, :longitude, false
    change_column_null :leagues, :price, false
  end
end
