class AddImageUrlToDinosaurs < ActiveRecord::Migration[5.2]
  def change
    add_column :dinosaurs, :image_url, :string
  end
end
