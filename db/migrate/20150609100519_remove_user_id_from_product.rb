class RemoveUserIdFromProduct < ActiveRecord::Migration
  def change
    remove_column :products, :user_id, :integer
    remove_column :products, :member_id, :integer
  end
end
