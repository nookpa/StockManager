# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  code_name  :text
#  sale_date  :datetime
#  sale_price :decimal(, )
#  type       :text
#  status     :text
#  user_id    :integer
#  member_id  :integer
#  product_id :integer
#  remark     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Item < ActiveRecord::Base
  belongs_to :user, class_name: "User"
  belongs_to :member, class_name: "Member"
  belongs_to :product, class_name: "Product"

  self.inheritance_column = nil

  TYPES = ["online", "walk_in"]
  STATUS = ["in_stock", "reserved", "sold_out", "repaired"]
end
