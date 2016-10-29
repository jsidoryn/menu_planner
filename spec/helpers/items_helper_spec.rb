require "rails_helper"

describe ItemsHelper do
  describe "#show_items" do
    it "has a valid factory" do
      expect(FactoryGirl.create(:item)).to be_valid
    end

    it "returns a well formatted string" do
      item = create(:item)
      expect(show_items(item)).to eq("5.0 tsp Carrot, thinly sliced")
    end
  end
end
