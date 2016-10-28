require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it { should validate_presence_of(:title) }
  it { should accept_nested_attributes_for(:items) }
  it { should belong_to(:shortlist) }
  it { should have_many(:ingredients) }
  it { should have_many(:items) }
end
