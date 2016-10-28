require 'rails_helper'
feature "visiting the homepage" do
  scenario "the visitor sees page title" do
    visit root_path
    expect(page).to have_text("Menu Planner")
  end
end
