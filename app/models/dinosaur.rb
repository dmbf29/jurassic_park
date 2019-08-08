class Dinosaur < ApplicationRecord
  belongs_to :park
  has_many :meals, dependent: :destroy
  has_many :foods, through: :meals
  SPECIES = ['t-rex', 'pterydactyl', 'triceritops', 'brontisaurus', 'velociraptor', 'stegasaurus', 'chicken']
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
