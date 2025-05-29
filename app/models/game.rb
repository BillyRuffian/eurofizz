# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  contest_id :integer          not null
#
# Indexes
#
#  index_games_on_contest_id  (contest_id)
#
# Foreign Keys
#
#  contest_id  (contest_id => contests.id)
#
class Game < ApplicationRecord
  belongs_to :contest
  has_and_belongs_to_many :users
end
