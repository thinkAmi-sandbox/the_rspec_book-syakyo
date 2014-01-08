class AddSenderidToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :sender_id, :integer
  end

  def self.down
    remove_column :users, :sender_id
  end
end
