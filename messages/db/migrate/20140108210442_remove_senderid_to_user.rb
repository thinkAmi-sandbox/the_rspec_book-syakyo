class RemoveSenderidToUser < ActiveRecord::Migration
  def self.up
    remove_column :users, :sender_id
  end

  def self.down
    add_column :users, :sender_id, :integer
  end
end
