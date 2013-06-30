class AddNameToImages < ActiveRecord::Migration
  def self.up
      change_table :images do |t|
        t.string :name
      end
    end
end
