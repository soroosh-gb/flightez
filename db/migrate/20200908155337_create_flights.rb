class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.string   :flight_number
      t.datetime :datetime 
      t.string   :departure
      t.string   :destination
      t.integer  :price
      t.integer  :seats 

      t.timestamps
    end
  end
end
