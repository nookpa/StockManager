# == Schema Information
#
# Table name: members
#
#  id         :integer          not null, primary key
#  first_name :text
#  last_name  :text
#  telephone  :text
#  email      :text
#  address    :text
#  facebook   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
