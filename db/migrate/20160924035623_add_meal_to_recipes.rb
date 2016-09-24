class AddMealToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :meal, :integer
  end
end
