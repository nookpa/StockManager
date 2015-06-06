class RemoveSalePriceFromProduct < ActiveRecord::Migration
  def change
    remove_column :products, :sale_price, :integer
  end
end
