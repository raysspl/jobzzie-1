class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :street_1
      t.string :street_2
      t.string :zip_code
      t.integer :lat
      t.integer :lng
      t.references :employer, index: true

      t.timestamps
    end
  end
end
