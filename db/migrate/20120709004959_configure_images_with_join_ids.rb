class ConfigureImagesWithJoinIds < ActiveRecord::Migration
  def up
    change_table :images do |t|
      t.column :menu_item_id, :integer
      t.column :event_id, :integer
    end
  end

  def down
  end
end
