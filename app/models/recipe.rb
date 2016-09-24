class Recipe < ApplicationRecord
	belongs_to :shortlist, optional: true
	has_many :items
	has_many :ingredients, :through => :items

	accepts_nested_attributes_for :items, allow_destroy: true, :reject_if => :all_blank

	dragonfly_accessor :image

	validates :title, presence: true

	enum meal: { breakfast: 0, lunch: 1, dinner: 2, dessert: 3, snack: 4 }

end
