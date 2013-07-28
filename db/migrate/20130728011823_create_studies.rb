class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.date :started_on
      t.date :ended_on
      t.boolean :did_graduate
      t.string :major
      t.string :minor
      t.references :student, index: true
      t.references :school, index: true

      t.timestamps
    end
  end
end
