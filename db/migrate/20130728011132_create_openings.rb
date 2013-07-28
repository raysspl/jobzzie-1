class CreateOpenings < ActiveRecord::Migration
  def change
    create_table :openings do |t|
      t.string :title
      t.date :starts_on
      t.string :compensation
      t.string :major
      t.text :description
      t.references :employer, index: true
      t.references :location, index: true

      t.timestamps
    end
  end
end
