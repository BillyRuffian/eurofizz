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
class Contest < ApplicationRecord
  default_scope { order(year: :desc) }
end
