require 'rails_helper'

feature "member create a recipe" do
  scenario "create recipe" do
    visit root_path
    click_link "New Recipe"
    fill_in_recipe_fields
    expect(page).to have_content("Recipe was successfully created.")
  end

  def fill_in_recipe_fields
    fill_in "recipe[title]", with: "Recipe title"
    click_button "Create Recipe"
  end
end
