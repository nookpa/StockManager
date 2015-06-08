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
  belongs_to :user
  belongs_to :member
  belongs_to :product
end
