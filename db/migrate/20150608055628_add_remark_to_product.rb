class AddRemarkToProduct < ActiveRecord::Migration
  def change
    add_column :products, :remark, :text
  end
end
