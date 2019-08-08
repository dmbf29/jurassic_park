class Food < ApplicationRecord
  has_many :meals
  has_many :dinosaurs, through: :meals
end
