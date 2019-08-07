class Dinosaur < ApplicationRecord
  belongs_to :park
  SPECIES = ['t-rex', 'pterydactyl', 'triceritops', 'brontisaurus', 'velociraptor', 'stegasaurus', 'chicken']
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
