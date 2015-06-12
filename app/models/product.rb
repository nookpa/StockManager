# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  name       :text
#  color      :text
#  cost_price :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  remark     :text
#  type       :text
#

class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :member
  has_many :items

  self.inheritance_column = nil

  PRODUCT_TYPES = ["small_bag", "medium_bag", "wallet", "shoe"]

  def in_stock_items
    self.items.where(status: "in_stock")
  end

  def sold_out_items
    self.items.where(status: "sold_out")
  end
end
