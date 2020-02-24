# == Schema Information
#
# Table name: world_cup_finals
#
#  id              :bigint           not null, primary key
#  champion        :string
#  champion_score  :integer
#  runner_up       :string
#  runner_up_score :integer
#  year            :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class WorldCupFinalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
