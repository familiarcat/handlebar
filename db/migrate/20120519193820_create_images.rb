class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :description
      t.string :file_file_name
      t.string :file_content_type
      t.integer :file_file_size
      t.datetime :file_updated_at
      t.timestamps
    end
  end
end
