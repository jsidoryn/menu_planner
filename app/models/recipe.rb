class Recipe < ApplicationRecord
  belongs_to :shortlist, optional: true
	dragonfly_accessor :image

	validates :title, presence: true
end
