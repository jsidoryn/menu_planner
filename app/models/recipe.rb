class Recipe < ApplicationRecord
  belongs_to :shortlist, optional: true
	dragonfly_accessor :image

	validates :title, presence: true

	enum meal: { breakfast: 0, lunch: 1, dinner: 2, dessert: 3, snack: 4 }
end
