# == Schema Information
#
# Table name: contests
#
#  id         :integer          not null, primary key
#  name       :string
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_contests_on_year  (year)
#
require "test_helper"

class ContestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
