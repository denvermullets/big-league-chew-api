class CreateLeagues < ActiveRecord::Migration[7.0]
  def change
    create_table :leagues do |t|
      t.string :league_name
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      # opting for integer just for whole number ease of use
      # depending on how granular the service is, decimal would probalby make sense
      t.integer :price

      t.timestamps
    end
  end
end
