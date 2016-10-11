class Ingredient < ApplicationRecord
	belongs_to :item

	validates :title, presence: true

	default_scope { order("title ASC") }
end
