class AddAvatarToUsers < ActiveRecord::Migration
  def self.up
      change_table :users do |t|
        t.string :avatar_file_name
        t.string :avatar_content_type
        t.integer :avatar_file_size
        t.datetime :avatar_updated_at
      end
    end

    def self.down
      drop_attached_file :users, :avatar
    end
end
