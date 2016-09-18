class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :sub_title
      t.text :description
      t.integer :source
      t.string :url
      t.string :book
      t.string :page
      t.integer :net_carbs
      t.integer :rating
      t.references :shortlist, foreign_key: true

      t.timestamps
    end
  end
end
