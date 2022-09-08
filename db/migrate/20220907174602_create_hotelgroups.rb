class CreateHotelgroups < ActiveRecord::Migration[7.0]
  def change
    create_table :hotelgroups do |t|

      t.timestamps
    end
  end
end
