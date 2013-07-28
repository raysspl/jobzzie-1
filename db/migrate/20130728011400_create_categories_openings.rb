class CreateCategoriesOpenings < ActiveRecord::Migration
  def change
    create_table :categories_openings do |t|
      t.references :category, index: true
      t.references :opening, index: true
    end
  end
end
