# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  name       :text
#  user_id    :integer
#  member_id  :integer
#  amount     :integer
#  color      :text
#  cost_price :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :member
end
