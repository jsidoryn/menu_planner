class ChangeSourceToStringForRecipe < ActiveRecord::Migration[5.0]
  def change
    change_column :recipes, :source,  :string
  end
end
