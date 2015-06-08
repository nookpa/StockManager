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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
