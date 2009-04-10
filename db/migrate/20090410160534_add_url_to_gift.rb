class AddUrlToGift < ActiveRecord::Migration
  def self.up
    add_column :gifts, :url, :string
  end

  def self.down
    remove_column :gifts, :url
  end
end
