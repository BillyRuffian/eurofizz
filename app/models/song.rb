# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  artist     :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  contest_id :integer          not null
#
# Indexes
#
#  index_songs_on_contest_id  (contest_id)
#
# Foreign Keys
#
#  contest_id  (contest_id => contests.id)
#
class Song < ApplicationRecord
  belongs_to :contest
end
