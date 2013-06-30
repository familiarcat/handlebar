class CreateImageGalleries < ActiveRecord::Migration
  def change
    create_table :image_galleries do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
