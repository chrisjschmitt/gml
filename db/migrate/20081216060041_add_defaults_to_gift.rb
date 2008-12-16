class AddDefaultsToGift < ActiveRecord::Migration
  def self.up
    change_column :gifts, :purchased, :boolean, :default => false
  end

  def self.down
    change_column :gifts, :purchased, :boolean, :default => :null
  end
end
