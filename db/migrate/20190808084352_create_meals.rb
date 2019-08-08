class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.references :dinosaur, foreign_key: true
      t.references :food, foreign_key: true

      t.timestamps
    end
  end
end
