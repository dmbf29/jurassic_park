class CreateDinosaurs < ActiveRecord::Migration[5.2]
  def change
    create_table :dinosaurs do |t|
      t.string :name
      t.string :species
      t.references :park, foreign_key: true

      t.timestamps
    end
  end
end
