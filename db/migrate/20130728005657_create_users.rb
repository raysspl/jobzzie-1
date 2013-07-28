class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :type, :null => false
      t.string :name_first
      t.string :name_last
      t.string :street_1
      t.string :street_2
      t.string :zip_code
      t.integer :lat
      t.integer :lng
      t.string :name_of_company
      t.string :email
      t.string :salt
      t.string :fish
      t.string :code
      t.timestamp :expires_at

      t.timestamps
    end
  end
end
