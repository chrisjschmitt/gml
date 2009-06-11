class AddUsernameAndTypeColumnsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users,  :username,  :string
    add_column :users,  :type,      :string
  end

  def self.down
    remove_column :users, :username
    remove_column :users, :type
  end
end
