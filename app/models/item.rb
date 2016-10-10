class Item < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

	enum unit: { tbs: 0, tsp: 1, cup: 2 }

  default_scope { order("orderable ASC") }
end
