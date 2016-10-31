require "rails_helper"

describe ItemPresenter do
  describe "#show_items" do
    it "has a valid factory" do
      expect(FactoryGirl.create(:item)).to be_valid
    end

    it "returns a well formatted string" do
      item = create(:item)
      expect(ItemPresenter.new(item).show_items).to eq("5 tsp carrots, thinly sliced")
    end
  end
end
