class Recipe < ApplicationRecord
  belongs_to :shortlist, optional: true

	validates :title, presence: true
end
