class Meal < ApplicationRecord
  belongs_to :dinosaur
  belongs_to :food
  validates :dinosaur_id, uniqueness: { scope: :food_id }
end
