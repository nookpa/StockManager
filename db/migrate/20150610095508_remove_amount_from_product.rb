class RemoveAmountFromProduct < ActiveRecord::Migration
  def change
    remove_column :products, :amount, :integer
  end
end
