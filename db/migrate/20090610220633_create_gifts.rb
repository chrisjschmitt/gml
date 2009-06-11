class CreateGifts < ActiveRecord::Migration
  def self.up
    create_table :gifts do |t|
      t.string :name
      t.string :url
      t.integer :quantity
      t.boolean :purchased, :default => false
      t.integer :user_id
      t.integer :purchaser_id
      t.datetime :purchase_date
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :gifts
  end
end
