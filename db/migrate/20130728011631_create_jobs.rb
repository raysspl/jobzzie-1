class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.date :started_on
      t.date :ended_on
      t.references :student, index: true

      t.timestamps
    end
  end
end
