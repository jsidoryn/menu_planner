class Item < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  enum unit: { tbs: 0, tsp: 1, cup: 2, ml: 3, litre: 4, gram: 5, kilogram: 6, pinch: 7,
               bunch: 8, piece: 9 }

  default_scope { order("orderable ASC") }

  delegate :title, to: :ingredient, prefix: true
end
